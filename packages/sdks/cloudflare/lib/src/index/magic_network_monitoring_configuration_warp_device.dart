// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicNetworkMonitoringConfigurationWarpDevice {
  /// Unique identifier for the warp device.
  final pulumi.Input<String> id;
  /// Name of the warp device.
  final pulumi.Input<String> name;
  /// IPv4 CIDR of the router sourcing flow data associated with this warp device. Only /32 addresses are currently supported.
  final pulumi.Input<String> routerIp;

  /// Creates a new [MagicNetworkMonitoringConfigurationWarpDevice].
  /// [id] Unique identifier for the warp device.
  /// [name] Name of the warp device.
  /// [routerIp] IPv4 CIDR of the router sourcing flow data associated with this warp device. Only /32 addresses are currently supported.
  const MagicNetworkMonitoringConfigurationWarpDevice({
    required this.id,
    required this.name,
    required this.routerIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'routerIp': routerIp,
    };
  }

  factory MagicNetworkMonitoringConfigurationWarpDevice.fromMap(Map<String, dynamic> map) {
    return MagicNetworkMonitoringConfigurationWarpDevice(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      routerIp: pulumi.Input.fromValue(map['routerIp'] as String),
    );
  }
}
