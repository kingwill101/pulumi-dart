import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls export of scan configurations and results to Security Command Center.
enum ScanConfigExportToSecurityCommandCenter implements pulumi.PulumiEnum<String> {
  exportToSecurityCommandCenterUnspecified("EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const ScanConfigExportToSecurityCommandCenter(this.wireValue);
  @override
  final String wireValue;

  static ScanConfigExportToSecurityCommandCenter fromValue(String value) {
    for (final item in ScanConfigExportToSecurityCommandCenter.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigExportToSecurityCommandCenter value: $value');
  }
}
