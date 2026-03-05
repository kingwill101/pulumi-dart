/// the entity query kind
enum CustomEntityQueryKind {
  valueActivity("Activity");

  const CustomEntityQueryKind(this.wireValue);
  final String wireValue;

  static CustomEntityQueryKind fromValue(String value) {
    for (final item in CustomEntityQueryKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomEntityQueryKind value: $value');
  }
}

