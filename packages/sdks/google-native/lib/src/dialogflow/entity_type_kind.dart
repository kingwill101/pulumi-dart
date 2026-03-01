/// Required. Indicates the kind of entity type.
enum EntityTypeKind {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind(this.value);
  final String value;

  static EntityTypeKind fromValue(String value) {
    for (final item in EntityTypeKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKind value: $value');
  }
}

