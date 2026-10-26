import 'package:pulumi/pulumi.dart' as pulumi;

/// Data source type.
enum SourceType implements pulumi.PulumiEnum<String> {
  sourceTypeUnknown("SOURCE_TYPE_UNKNOWN"),
  sourceTypeUpload("SOURCE_TYPE_UPLOAD"),
  sourceTypeGuestOsScan("SOURCE_TYPE_GUEST_OS_SCAN"),
  sourceTypeInventoryScan("SOURCE_TYPE_INVENTORY_SCAN"),
  sourceTypeCustom("SOURCE_TYPE_CUSTOM");

  const SourceType(this.wireValue);
  @override
  final String wireValue;

  static SourceType fromValue(String value) {
    for (final item in SourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceType value: $value');
  }
}
