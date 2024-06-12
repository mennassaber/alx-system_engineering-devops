#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

int main(void)
{
    pid_t child_pid;
    int i;

    for (i = 0; i < 5; i++)
    {
        child_pid = fork();
        if (child_pid > 0)
        {
            printf("Zombie process created, PID: %d\n", child_pid);
            sleep(1); // Give child process time to become a zombie
        }
        else if (child_pid == 0)
        {
            exit(0); // Child process exits immediately
        }
        else
        {
            perror("fork");
            return (1);
        }
    }

    infinite_while(); // Infinite loop to keep the program running

    return (0);
}
