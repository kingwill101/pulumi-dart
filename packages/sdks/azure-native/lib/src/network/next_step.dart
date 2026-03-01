/// Next step after rule is evaluated. Current supported behaviors are 'Continue'(to next rule) and 'Terminate'.
enum NextStep {
  valueUnknown("Unknown"),
  valueContinue("Continue"),
  valueTerminate("Terminate");

  const NextStep(this.value);
  final String value;

  static NextStep fromValue(String value) {
    for (final item in NextStep.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NextStep value: $value');
  }
}

