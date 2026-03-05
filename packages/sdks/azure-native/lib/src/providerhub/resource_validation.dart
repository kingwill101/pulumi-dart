/// The resource validation.
enum ResourceValidation {
  notSpecified("NotSpecified"),
  reservedWords("ReservedWords"),
  profaneWords("ProfaneWords");

  const ResourceValidation(this.wireValue);
  final String wireValue;

  static ResourceValidation fromValue(String value) {
    for (final item in ResourceValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceValidation value: $value');
  }
}

