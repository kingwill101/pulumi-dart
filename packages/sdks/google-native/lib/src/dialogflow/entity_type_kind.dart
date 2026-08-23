/// Required. Indicates the kind of entity type.
enum EntityTypeKind {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind(this.wireValue);
  final String wireValue;

  static EntityTypeKind fromValue(String value) {
    for (final item in EntityTypeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKind value: $value');
  }
}
