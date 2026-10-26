import 'package:pulumi/pulumi.dart' as pulumi;

/// Immutable. The target type of this group.
enum GroupMigrationTargetType implements pulumi.PulumiEnum<String> {
  migrationTargetTypeUnspecified("MIGRATION_TARGET_TYPE_UNSPECIFIED"),
  migrationTargetTypeGce("MIGRATION_TARGET_TYPE_GCE"),
  migrationTargetTypeDisks("MIGRATION_TARGET_TYPE_DISKS");

  const GroupMigrationTargetType(this.wireValue);
  @override
  final String wireValue;

  static GroupMigrationTargetType fromValue(String value) {
    for (final item in GroupMigrationTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMigrationTargetType value: $value');
  }
}
