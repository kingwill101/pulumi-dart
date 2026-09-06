import 'package:pulumi/pulumi.dart' as pulumi;

/// The operational state of auto export. InProgress indicates the export is running.  Disabling indicates the user has requested to disable the export but the disabling is still in progress. Disabled indicates auto export has been disabled.  DisableFailed indicates the disabling has failed.  Failed means the export was unable to continue, due to a fatal error.
enum AutoExportStatusType implements pulumi.PulumiEnum<String> {
  valueInProgress("InProgress"),
  valueDisabling("Disabling"),
  valueDisabled("Disabled"),
  valueDisableFailed("DisableFailed"),
  valueFailed("Failed");

  const AutoExportStatusType(this.wireValue);
  @override
  final String wireValue;

  static AutoExportStatusType fromValue(String value) {
    for (final item in AutoExportStatusType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoExportStatusType value: $value');
  }
}
