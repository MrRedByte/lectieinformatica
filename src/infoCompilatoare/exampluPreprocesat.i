# 1 "exemplu.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 478 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "exemplu.cpp" 2
int add
    (int a, int b) {
    return a + b;
}

int multiply
    (int a, int b) {
    return a * b;
}

int main() {
    int numar;

    numar =
        add(10, 20)
        +
        multiply(3, 4);

    return 0;
}
