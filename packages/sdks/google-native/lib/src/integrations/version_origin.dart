/// Optional. The origin that indicates where this integration is coming from.
enum VersionOrigin {
  unspecified("UNSPECIFIED"),
  ui("UI"),
  piperV2("PIPER_V2"),
  piperV3("PIPER_V3"),
  applicationIpProvisioning("APPLICATION_IP_PROVISIONING"),
  testCase("TEST_CASE");

  const VersionOrigin(this.wireValue);
  final String wireValue;

  static VersionOrigin fromValue(String value) {
    for (final item in VersionOrigin.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionOrigin value: $value');
  }
}
