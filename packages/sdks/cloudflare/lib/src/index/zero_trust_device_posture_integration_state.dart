// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_posture_integration_config.dart';

/// Input properties used for looking up and filtering ZeroTrustDevicePostureIntegration resources.
class ZeroTrustDevicePostureIntegrationState {
  final pulumi.Input<String?>? accountId;
  /// The configuration object containing third-party integration information.
  final pulumi.Input<ZeroTrustDevicePostureIntegrationConfig?>? config;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  final pulumi.Input<String?>? interval;
  /// The name of the device posture integration.
  final pulumi.Input<String?>? name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  final pulumi.Input<String?>? type;

  /// Creates a new [ZeroTrustDevicePostureIntegrationState].
  /// [accountId] Optional.
  /// [config] The configuration object containing third-party integration information.
  /// [interval] The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  /// [name] The name of the device posture integration.
  /// [type] The type of device posture integration.
  const ZeroTrustDevicePostureIntegrationState({
    this.accountId,
    this.config,
    this.interval,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDevicePostureIntegrationConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'interval': ?interval,
      'name': ?name,
      'type': ?type,
    };
  }

  factory ZeroTrustDevicePostureIntegrationState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDevicePostureIntegrationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
