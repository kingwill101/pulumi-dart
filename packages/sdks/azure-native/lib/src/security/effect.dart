/// Expected effect of this assignment (Audit/Exempt/Attest)
enum Effect {
  valueAudit("Audit"),
  valueExempt("Exempt"),
  valueAttest("Attest");

  const Effect(this.value);
  final String value;

  static Effect fromValue(String value) {
    for (final item in Effect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Effect value: $value');
  }
}

