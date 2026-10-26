import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. The type of entity.
enum EntityType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  table("TABLE"),
  fileset("FILESET");

  const EntityType(this.wireValue);
  @override
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
