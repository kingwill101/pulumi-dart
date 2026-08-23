/// Immutable. The target type of this group.
enum GroupMigrationTargetTypeVmmigrationV1alpha1 {
  migrationTargetTypeUnspecified("MIGRATION_TARGET_TYPE_UNSPECIFIED"),
  migrationTargetTypeGce("MIGRATION_TARGET_TYPE_GCE"),
  migrationTargetTypeDisks("MIGRATION_TARGET_TYPE_DISKS");

  const GroupMigrationTargetTypeVmmigrationV1alpha1(this.wireValue);
  final String wireValue;

  static GroupMigrationTargetTypeVmmigrationV1alpha1 fromValue(String value) {
    for (final item in GroupMigrationTargetTypeVmmigrationV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GroupMigrationTargetTypeVmmigrationV1alpha1 value: $value');
  }
}
