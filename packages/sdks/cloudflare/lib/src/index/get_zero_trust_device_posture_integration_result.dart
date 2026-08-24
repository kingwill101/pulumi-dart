// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_device_posture_integration_config.dart';

/// Result data returned by getZeroTrustDevicePostureIntegration.
class GetZeroTrustDevicePostureIntegrationResult {
  final String? accountId;
  /// The configuration object containing third-party integration information.
  final GetZeroTrustDevicePostureIntegrationConfig? config;
  /// API UUID.
  final String? id;
  /// API UUID.
  final String? integrationId;
  /// The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  final String? interval;
  /// The name of the device posture integration.
  final String? name;
  /// The type of device posture integration.
  /// Available values: "workspace*one", "crowdstrike*s2s", "uptycs", "intune", "kolide", "tanium*s2s", "sentinelone*s2s", "customS2s".
  final String? type;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationResult].
  /// [accountId] Optional.
  /// [config] The configuration object containing third-party integration information.
  /// [id] API UUID.
  /// [integrationId] API UUID.
  /// [interval] The interval between each posture check with the third-party API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
  /// [name] The name of the device posture integration.
  /// [type] The type of device posture integration.
  const GetZeroTrustDevicePostureIntegrationResult({
    this.accountId,
    this.config,
    this.id,
    this.integrationId,
    this.interval,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'config': ?config?.toMap(),
      'id': ?id,
      'integrationId': ?integrationId,
      'interval': ?interval,
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetZeroTrustDevicePostureIntegrationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return GetZeroTrustDevicePostureIntegrationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
