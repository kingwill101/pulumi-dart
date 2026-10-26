import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of remediation that can be applied.
enum RemediationRemediationTypeContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationTypeContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static RemediationRemediationTypeContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in RemediationRemediationTypeContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemediationRemediationTypeContaineranalysisV1alpha1 value: $value');
  }
}
