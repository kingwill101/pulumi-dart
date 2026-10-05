import 'package:pulumi/pulumi.dart' as pulumi;

/// The log_name to populate in the Cloud Audit Record.
enum CloudAuditOptionsLogNameGameservicesV1beta implements pulumi.PulumiEnum<String> {
  unspecifiedLogName("UNSPECIFIED_LOG_NAME"),
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS");

  const CloudAuditOptionsLogNameGameservicesV1beta(this.wireValue);
  @override
  final String wireValue;

  static CloudAuditOptionsLogNameGameservicesV1beta fromValue(String value) {
    for (final item in CloudAuditOptionsLogNameGameservicesV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudAuditOptionsLogNameGameservicesV1beta value: $value');
  }
}
