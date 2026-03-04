/// Compute Engine machine type on which to run the build.
enum BuildOptionsMachineType {
  unspecified("UNSPECIFIED"),
  n1Highcpu8("N1_HIGHCPU_8"),
  n1Highcpu32("N1_HIGHCPU_32"),
  e2Highcpu8("E2_HIGHCPU_8"),
  e2Highcpu32("E2_HIGHCPU_32"),
  e2Medium("E2_MEDIUM");

  const BuildOptionsMachineType(this.wireValue);
  final String wireValue;

  static BuildOptionsMachineType fromValue(String value) {
    for (final item in BuildOptionsMachineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsMachineType value: $value');
  }
}
