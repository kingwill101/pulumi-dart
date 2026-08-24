// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_network_monitoring_configuration_warp_device.dart';

/// {@template pulumi_index_magic_network_monitoring_configuration_magic_network_monitoring_configuration_args_doc}
/// The set of arguments for MagicNetworkMonitoringConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_magic_network_monitoring_configuration_magic_network_monitoring_configuration_args_doc}
class MagicNetworkMonitoringConfigurationArgs {
  final pulumi.Input<String> accountId;
  /// Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
  final pulumi.Input<double?>? defaultSampling;
  /// The account name.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>?>? routerIps;
  final pulumi.Input<List<MagicNetworkMonitoringConfigurationWarpDevice>?>? warpDevices;

  /// Creates a new [MagicNetworkMonitoringConfigurationArgs].
  /// [accountId] Required.
  /// [defaultSampling] Fallback sampling rate of flow messages being sent in packets per second. This should match the packet sampling rate configured on the router.
  /// [name] The account name.
  /// [routerIps] Optional.
  /// [warpDevices] Optional.
  const MagicNetworkMonitoringConfigurationArgs({
    required this.accountId,
    this.defaultSampling,
    required this.name,
    this.routerIps,
    this.warpDevices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'defaultSampling': ?defaultSampling,
      'name': name,
      'routerIps': ?routerIps,
      'warpDevices': ?pulumi.Input.mapOptionalInputValue<List<MagicNetworkMonitoringConfigurationWarpDevice>, List<Map<String, dynamic>>>(warpDevices, (value) => pulumi.Input.encodeList<MagicNetworkMonitoringConfigurationWarpDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MagicNetworkMonitoringConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MagicNetworkMonitoringConfigurationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      defaultSampling: (() { final guardedValue = map['defaultSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routerIps: (() { final guardedValue = map['routerIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      warpDevices: (() { final guardedValue = map['warpDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MagicNetworkMonitoringConfigurationWarpDevice>(guardedValue, (value) => MagicNetworkMonitoringConfigurationWarpDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
