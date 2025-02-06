class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    List<String> delimiters = [',', '\n'];
    String numbersSection = numbers;

    if (numbers.startsWith('//')) {
      final delimiterEnd = numbers.indexOf('\n');
      delimiters = [numbers.substring(2, delimiterEnd)];
      numbersSection = numbers.substring(delimiterEnd + 1);
    }

    final parts = numbersSection.split(RegExp(delimiters.map(RegExp.escape).join('|')));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
