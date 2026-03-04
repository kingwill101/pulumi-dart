/// Data source type.
enum SourceTypeMigrationcenterV1alpha1 {
  sourceTypeUnknown("SOURCE_TYPE_UNKNOWN"),
  sourceTypeUpload("SOURCE_TYPE_UPLOAD"),
  sourceTypeGuestOsScan("SOURCE_TYPE_GUEST_OS_SCAN"),
  sourceTypeInventoryScan("SOURCE_TYPE_INVENTORY_SCAN"),
  sourceTypeCustom("SOURCE_TYPE_CUSTOM");

  const SourceTypeMigrationcenterV1alpha1(this.wireValue);
  final String wireValue;

  static SourceTypeMigrationcenterV1alpha1 fromValue(String value) {
    for (final item in SourceTypeMigrationcenterV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SourceTypeMigrationcenterV1alpha1 value: $value',
    );
  }
}
