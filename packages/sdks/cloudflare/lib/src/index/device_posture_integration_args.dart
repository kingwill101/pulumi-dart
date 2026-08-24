// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_posture_integration_config.dart';

/// {@template pulumi_index_device_posture_integration_device_posture_integration_args_doc}
/// The set of arguments for DevicePostureIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_device_posture_integration_device_posture_integration_args_doc}
class DevicePostureIntegrationArgs {
  final pulumi.Input<String> accountId;
  /// The configuration object containing third-party integration information.
  final pulumi.Input<DevicePostureIntegrationConfig> config;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  final pulumi.Input<String> interval;
  /// The name of the device posture integration.
  final pulumi.Input<String> name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  final pulumi.Input<String> type;

  /// Creates a new [DevicePostureIntegrationArgs].
  /// [accountId] Required.
  /// [config] The configuration object containing third-party integration information.
  /// [interval] The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  /// [name] The name of the device posture integration.
  /// [type] The type of device posture integration.
  const DevicePostureIntegrationArgs({
    required this.accountId,
    required this.config,
    required this.interval,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'config': pulumi.Input.mapInputValue<DevicePostureIntegrationConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'interval': interval,
      'name': name,
      'type': type,
    };
  }

  factory DevicePostureIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return DevicePostureIntegrationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      config: pulumi.Input.fromValue(DevicePostureIntegrationConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
