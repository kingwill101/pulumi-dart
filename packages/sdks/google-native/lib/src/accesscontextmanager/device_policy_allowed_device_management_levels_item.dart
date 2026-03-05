enum DevicePolicyAllowedDeviceManagementLevelsItem {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  none("NONE"),
  basic("BASIC"),
  complete("COMPLETE");

  const DevicePolicyAllowedDeviceManagementLevelsItem(this.wireValue);
  final String wireValue;

  static DevicePolicyAllowedDeviceManagementLevelsItem fromValue(String value) {
    for (final item in DevicePolicyAllowedDeviceManagementLevelsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevicePolicyAllowedDeviceManagementLevelsItem value: $value');
  }
}

