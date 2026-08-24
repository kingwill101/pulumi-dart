// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_posture_integration_config.dart';

/// Input properties used for looking up and filtering DevicePostureIntegration resources.
class DevicePostureIntegrationState {
  final pulumi.Input<String?>? accountId;
  /// The configuration object containing third-party integration information.
  final pulumi.Input<DevicePostureIntegrationConfig?>? config;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  final pulumi.Input<String?>? interval;
  /// The name of the device posture integration.
  final pulumi.Input<String?>? name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  final pulumi.Input<String?>? type;

  /// Creates a new [DevicePostureIntegrationState].
  /// [accountId] Optional.
  /// [config] The configuration object containing third-party integration information.
  /// [interval] The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  /// [name] The name of the device posture integration.
  /// [type] The type of device posture integration.
  const DevicePostureIntegrationState({
    this.accountId,
    this.config,
    this.interval,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<DevicePostureIntegrationConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'interval': ?interval,
      'name': ?name,
      'type': ?type,
    };
  }

  factory DevicePostureIntegrationState.fromMap(Map<String, dynamic> map) {
    return DevicePostureIntegrationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
