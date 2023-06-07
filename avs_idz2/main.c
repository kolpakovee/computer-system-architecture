#include <stdio.h>

void print(int array[], int size) {
    int count = 0;
    for (int i = 0; i < size; i++) {
        if (array[i] != 0 && i >= 32) {
            printf("%c => %d\n", (char) i, array[i]);
            ++count;
        }
    }
    printf("%d", count);
}

int main() {
    int counts[128] = {0};
    char str[1000000];
    int i = 0;
    int ch;
    do {
        ch = fgetc(stdin);
        str[i++] = ch;
        counts[ch]++;
    } while (ch != -1);
    str[i - 1] = '\0';
    print(counts, 128);
    return 0;
}