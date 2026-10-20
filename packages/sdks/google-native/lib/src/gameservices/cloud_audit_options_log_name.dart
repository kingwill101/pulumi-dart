import 'package:pulumi/pulumi.dart' as pulumi;

/// The log_name to populate in the Cloud Audit Record.
enum CloudAuditOptionsLogName implements pulumi.PulumiEnum<String> {
  unspecifiedLogName("UNSPECIFIED_LOG_NAME"),
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS");

  const CloudAuditOptionsLogName(this.wireValue);
  @override
  final String wireValue;

  static CloudAuditOptionsLogName fromValue(String value) {
    for (final item in CloudAuditOptionsLogName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudAuditOptionsLogName value: $value');
  }
}
