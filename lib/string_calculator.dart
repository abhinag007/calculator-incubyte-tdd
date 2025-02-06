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
    final intList = parts.map(int.parse).toList();

    final negatives = intList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(',')}');
    }

    return intList.reduce((a, b) => a + b);
  }
}
