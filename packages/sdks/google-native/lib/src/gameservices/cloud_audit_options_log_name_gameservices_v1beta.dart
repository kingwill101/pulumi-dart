/// The log_name to populate in the Cloud Audit Record.
enum CloudAuditOptionsLogNameGameservicesV1beta {
  unspecifiedLogName("UNSPECIFIED_LOG_NAME"),
  adminActivity("ADMIN_ACTIVITY"),
  dataAccess("DATA_ACCESS");

  const CloudAuditOptionsLogNameGameservicesV1beta(this.wireValue);
  final String wireValue;

  static CloudAuditOptionsLogNameGameservicesV1beta fromValue(String value) {
    for (final item in CloudAuditOptionsLogNameGameservicesV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CloudAuditOptionsLogNameGameservicesV1beta value: $value',
    );
  }
}
