/// The type of remediation that can be applied.
enum RemediationRemediationType {
  remediationTypeUnspecified("REMEDIATION_TYPE_UNSPECIFIED"),
  mitigation("MITIGATION"),
  noFixPlanned("NO_FIX_PLANNED"),
  noneAvailable("NONE_AVAILABLE"),
  vendorFix("VENDOR_FIX"),
  workaround("WORKAROUND");

  const RemediationRemediationType(this.value);
  final String value;

  static RemediationRemediationType fromValue(String value) {
    for (final item in RemediationRemediationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemediationRemediationType value: $value');
  }
}

