/// How to handle well known App Association files.
enum ServingConfigAppAssociation {
  auto("AUTO"),
  none("NONE");

  const ServingConfigAppAssociation(this.wireValue);
  final String wireValue;

  static ServingConfigAppAssociation fromValue(String value) {
    for (final item in ServingConfigAppAssociation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServingConfigAppAssociation value: $value');
  }
}
