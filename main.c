#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <pthread.h>

#define PORT 8080

int sock = 0;
struct sockaddr_in serv_addr;

void *receive_message(void *arg)
{
    char buffer[1024] = {0};
    while (1)
    {
        int valread = read(sock, buffer, 1024);
        if (valread > 0)
        {
            printf("Serveur: %s\n", buffer);
            memset(buffer, 0, 1024);
        }
        else
        {
            printf("Serveur déconnecté.\n");
            break;
        }
    }
    return NULL;
}

int main(int argc, char const *argv[])
{
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
        perror("Erreur lors de la création du socket");
        return -1;
    }

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0)
    {
        perror("Adresse invalide/ Addresse non supportée");
        return -1;
    }

    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
    {
        perror("Connection échouée");
        return -1;
    }

    pthread_t tid;
    pthread_create(&tid, NULL, receive_message, NULL);

    char message[1024] = {0};
    while (1)
    {
        fgets(message, 1024, stdin);
        message[strcspn(message, "\n")] = 0;
        send(sock, message, strlen(message), 0);
        memset(message, 0, 1024);
    }

    return 0;
}
