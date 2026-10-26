import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the kind of entity type.
enum EntityTypeKindDialogflowV3 implements pulumi.PulumiEnum<String> {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKindDialogflowV3(this.wireValue);
  @override
  final String wireValue;

  static EntityTypeKindDialogflowV3 fromValue(String value) {
    for (final item in EntityTypeKindDialogflowV3.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKindDialogflowV3 value: $value');
  }
}
