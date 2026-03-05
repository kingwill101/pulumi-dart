/// The architecture of a first party application of a Test Base Account.
enum Architecture {
  valueX86("x86"),
  valueX64("x64"),
  valueArm64("arm64");

  const Architecture(this.wireValue);
  final String wireValue;

  static Architecture fromValue(String value) {
    for (final item in Architecture.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Architecture value: $value');
  }
}

