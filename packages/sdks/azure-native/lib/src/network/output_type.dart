/// Connection monitor output destination type. Currently, only "Workspace" is supported.
enum OutputType {
  valueWorkspace("Workspace");

  const OutputType(this.wireValue);
  final String wireValue;

  static OutputType fromValue(String value) {
    for (final item in OutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputType value: $value');
  }
}
