/// Expected effect of this assignment (Audit/Exempt/Attest)
enum Effect {
  audit("Audit"),
  exempt("Exempt"),
  attest("Attest");

  const Effect(this.wireValue);
  final String wireValue;

  static Effect fromValue(String value) {
    for (final item in Effect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Effect value: $value');
  }
}
