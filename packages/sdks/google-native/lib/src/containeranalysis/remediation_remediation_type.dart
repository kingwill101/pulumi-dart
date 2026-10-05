import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of remediation that can be applied.
enum RemediationRemediationType implements pulumi.PulumiEnum<String> {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationType(this.wireValue);
  @override
  final String wireValue;

  static RemediationRemediationType fromValue(String value) {
    for (final item in RemediationRemediationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemediationRemediationType value: $value');
  }
}
