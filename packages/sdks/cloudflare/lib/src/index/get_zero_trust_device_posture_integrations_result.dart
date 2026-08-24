// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_device_posture_integrations_result_config.dart';

class GetZeroTrustDevicePostureIntegrationsResult {
  /// The configuration object containing third-party integration information.
  final pulumi.Input<GetZeroTrustDevicePostureIntegrationsResultConfig> config;
  /// API UUID.
  final pulumi.Input<String> id;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  final pulumi.Input<String> interval;
  /// The name of the device posture integration.
  final pulumi.Input<String> name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  final pulumi.Input<String> type;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationsResult].
  /// [config] The configuration object containing third-party integration information.
  /// [id] API UUID.
  /// [interval] The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  /// [name] The name of the device posture integration.
  /// [type] The type of device posture integration.
  const GetZeroTrustDevicePostureIntegrationsResult({
    required this.config,
    required this.id,
    required this.interval,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<GetZeroTrustDevicePostureIntegrationsResultConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'id': id,
      'interval': interval,
      'name': name,
      'type': type,
    };
  }

  factory GetZeroTrustDevicePostureIntegrationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationsResult(
      config: pulumi.Input.fromValue(GetZeroTrustDevicePostureIntegrationsResultConfig.fromMap((map['config']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
