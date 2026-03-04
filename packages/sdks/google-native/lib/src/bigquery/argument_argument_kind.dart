/// Optional. Defaults to FIXED_TYPE.
enum ArgumentArgumentKind {
  argumentKindUnspecified("ARGUMENT_KIND_UNSPECIFIED"),
  fixedType("FIXED_TYPE"),
  anyType("ANY_TYPE");

  const ArgumentArgumentKind(this.wireValue);
  final String wireValue;

  static ArgumentArgumentKind fromValue(String value) {
    for (final item in ArgumentArgumentKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArgumentArgumentKind value: $value');
  }
}
