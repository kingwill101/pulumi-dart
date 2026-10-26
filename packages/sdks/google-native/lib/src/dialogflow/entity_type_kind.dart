import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Indicates the kind of entity type.
enum EntityTypeKind implements pulumi.PulumiEnum<String> {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind(this.wireValue);
  @override
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
