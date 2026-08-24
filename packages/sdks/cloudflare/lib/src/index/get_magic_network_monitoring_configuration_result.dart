// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_network_monitoring_configuration_warp_device.dart';

/// Result data returned by getMagicNetworkMonitoringConfiguration.
class GetMagicNetworkMonitoringConfigurationResult {
  final String? accountId;
  /// Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
  final double? defaultSampling;
  /// The account name.
  final String? name;
  final List<String>? routerIps;
  final List<GetMagicNetworkMonitoringConfigurationWarpDevice>? warpDevices;

  /// Creates a new [GetMagicNetworkMonitoringConfigurationResult].
  /// [accountId] Optional.
  /// [defaultSampling] Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
  /// [name] The account name.
  /// [routerIps] Optional.
  /// [warpDevices] Optional.
  const GetMagicNetworkMonitoringConfigurationResult({
    this.accountId,
    this.defaultSampling,
    this.name,
    this.routerIps,
    this.warpDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'defaultSampling': ?defaultSampling,
      'name': ?name,
      'routerIps': ?routerIps,
      'warpDevices': ?(() { final guardedValue = warpDevices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicNetworkMonitoringConfigurationWarpDevice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMagicNetworkMonitoringConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetMagicNetworkMonitoringConfigurationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSampling: (() { final guardedValue = map['defaultSampling']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routerIps: (() { final guardedValue = map['routerIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      warpDevices: (() { final guardedValue = map['warpDevices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicNetworkMonitoringConfigurationWarpDevice>(guardedValue, (value) => GetMagicNetworkMonitoringConfigurationWarpDevice.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
