// 定义一个递归函数，用于计算斐波那契数列的第 n 项
int fibonacci(int n) {
  // 基础情况：fibonacci(0) = 0, fibonacci(1) = 1
  if (n == 0 || n == 1) return n;

  // 递归调用：fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// 调用 fibonacci 函数，计算第 20 项，并存储在 result 变量中
var result = fibonacci(20);

// 打印结果
void main() {
  print('The 20th Fibonacci number is: $result');
}
