/// The implementation effort required to remediate this assessment
enum ImplementationEffort {
  valueLow("Low"),
  valueModerate("Moderate"),
  valueHigh("High");

  const ImplementationEffort(this.wireValue);
  final String wireValue;

  static ImplementationEffort fromValue(String value) {
    for (final item in ImplementationEffort.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImplementationEffort value: $value');
  }
}

