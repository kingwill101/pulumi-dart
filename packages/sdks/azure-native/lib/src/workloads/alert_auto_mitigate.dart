/// The value that indicates whether the alert should be automatically resolved or not. The default is Disable.
enum AlertAutoMitigate {
  enable("Enable"),
  disable("Disable");

  const AlertAutoMitigate(this.wireValue);
  final String wireValue;

  static AlertAutoMitigate fromValue(String value) {
    for (final item in AlertAutoMitigate.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertAutoMitigate value: $value');
  }
}
