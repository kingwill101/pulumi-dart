// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'malware_scanning_properties_response.dart';
import 'sensitive_data_discovery_properties_response.dart';

/// Defender for Storage resource properties.
class DefenderForStorageSettingPropertiesResponse {
  /// Indicates whether Defender for Storage is enabled on this storage account.
  final pulumi.Input<bool>? isEnabled;
  /// Properties of Malware Scanning.
  final pulumi.Input<MalwareScanningPropertiesResponse>? malwareScanning;
  /// Indicates whether the settings defined for this storage account should override the settings defined for the subscription.
  final pulumi.Input<bool>? overrideSubscriptionLevelSettings;
  /// Properties of Sensitive Data Discovery.
  final pulumi.Input<SensitiveDataDiscoveryPropertiesResponse>? sensitiveDataDiscovery;

  /// Creates a new [DefenderForStorageSettingPropertiesResponse].
  /// [isEnabled] Indicates whether Defender for Storage is enabled on this storage account.
  /// [malwareScanning] Properties of Malware Scanning.
  /// [overrideSubscriptionLevelSettings] Indicates whether the settings defined for this storage account should override the settings defined for the subscription.
  /// [sensitiveDataDiscovery] Properties of Sensitive Data Discovery.
  DefenderForStorageSettingPropertiesResponse({
    this.isEnabled,
    this.malwareScanning,
    this.overrideSubscriptionLevelSettings,
    this.sensitiveDataDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'malwareScanning': ?pulumi.Input.mapOptionalInputValue<MalwareScanningPropertiesResponse, Map<String, dynamic>>(malwareScanning, (value) => value.toMap()),
      'overrideSubscriptionLevelSettings': ?overrideSubscriptionLevelSettings,
      'sensitiveDataDiscovery': ?pulumi.Input.mapOptionalInputValue<SensitiveDataDiscoveryPropertiesResponse, Map<String, dynamic>>(sensitiveDataDiscovery, (value) => value.toMap()),
    };
  }

  factory DefenderForStorageSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForStorageSettingPropertiesResponse(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      malwareScanning: (() { final guardedValue = map['malwareScanning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MalwareScanningPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrideSubscriptionLevelSettings: (() { final guardedValue = map['overrideSubscriptionLevelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitiveDataDiscovery: (() { final guardedValue = map['sensitiveDataDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SensitiveDataDiscoveryPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

