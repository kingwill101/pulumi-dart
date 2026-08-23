/// The kind of the environment.
enum EnvironmentKind {
  valueGen1("Gen1"),
  valueGen2("Gen2");

  const EnvironmentKind(this.wireValue);
  final String wireValue;

  static EnvironmentKind fromValue(String value) {
    for (final item in EnvironmentKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentKind value: $value');
  }
}
