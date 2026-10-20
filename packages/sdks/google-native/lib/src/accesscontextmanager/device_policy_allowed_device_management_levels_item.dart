import 'package:pulumi/pulumi.dart' as pulumi;

enum DevicePolicyAllowedDeviceManagementLevelsItem implements pulumi.PulumiEnum<String> {
  managementUnspecified("MANAGEMENT_UNSPECIFIED"),
  none("NONE"),
  basic("BASIC"),
  complete("COMPLETE");

  const DevicePolicyAllowedDeviceManagementLevelsItem(this.wireValue);
  @override
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
