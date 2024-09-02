#include <stdio.h>

struct structurino {
    int iks;
    int igrig;
};

int varstandsforvideoassistantrefereee = 666;

void my_function(int a, int b) {
    printf("Sum: %d\n", a + b);
}

int main() {
    struct structurino s;
    s.iks = 400;
    s.igrig = 20;

    printf("Global variableuuuuh: %d\n", varstandsforvideoassistantrefereee);

    my_function(s.iks, s.igrig);

    return 0;
}
