#include <stdio.h>
#include <stdlib.h>

int main() {
  printf("\n\n*****DISK SCHEDULING*****\n\n");
  int n, i, head, seek_time = 0;
  int request[100], distance[100];

  printf("Enter the number of requests: ");
  scanf("%d", &n);

  for (i = 0; i < n; i++) {
    printf("Enter request %d: ", i + 1);
    scanf("%d", &request[i]);
  }

  printf("Enter the head position: ");
  scanf("%d", &head);

  for (i = 0; i < n; i++) {
    distance[i] = abs(head - request[i]);
    seek_time += distance[i];
    head = request[i];
  }

  printf("Total seek time: %d\n", seek_time);

  return 0;
}
