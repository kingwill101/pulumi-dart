/// Required. Immutable. The type of entity.
enum EntityType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  table("TABLE"),
  fileset("FILESET");

  const EntityType(this.wireValue);
  final String wireValue;

  static EntityType fromValue(String value) {
    for (final item in EntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityType value: $value');
  }
}

