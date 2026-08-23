/// Required. Indicates the kind of entity type.
enum EntityTypeKindDialogflowV3beta1 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKindDialogflowV3beta1(this.wireValue);
  final String wireValue;

  static EntityTypeKindDialogflowV3beta1 fromValue(String value) {
    for (final item in EntityTypeKindDialogflowV3beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKindDialogflowV3beta1 value: $value');
  }
}
