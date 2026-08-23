/// Defines the type of technology used by the confidential instance.
enum ConfidentialInstanceConfigConfidentialInstanceType {
  confidentialInstanceTypeUnspecified("CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED"),
  sev("SEV"),
  sevSnp("SEV_SNP"),
  tdx("TDX");

  const ConfidentialInstanceConfigConfidentialInstanceType(this.wireValue);
  final String wireValue;

  static ConfidentialInstanceConfigConfidentialInstanceType fromValue(String value) {
    for (final item in ConfidentialInstanceConfigConfidentialInstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialInstanceConfigConfidentialInstanceType value: $value');
  }
}
