enum DevicePolicyAllowedDeviceManagementLevelsItemAccesscontextmanagerV1beta {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  none("NONE"),
  basic("BASIC"),
  complete("COMPLETE");

  const DevicePolicyAllowedDeviceManagementLevelsItemAccesscontextmanagerV1beta(
    this.wireValue,
  );
  final String wireValue;

  static DevicePolicyAllowedDeviceManagementLevelsItemAccesscontextmanagerV1beta
  fromValue(String value) {
    for (final item
        in DevicePolicyAllowedDeviceManagementLevelsItemAccesscontextmanagerV1beta
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DevicePolicyAllowedDeviceManagementLevelsItemAccesscontextmanagerV1beta value: $value',
    );
  }
}
