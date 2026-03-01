// ignore_for_file: unused_element, unnecessary_cast

import 'malware_scanning_properties_response.dart';
import 'sensitive_data_discovery_properties_response.dart';

/// Defender for Storage resource properties.
class DefenderForStorageSettingPropertiesResponse {
  /// Indicates whether Defender for Storage is enabled on this storage account.
  final bool? isEnabled;
  /// Properties of Malware Scanning.
  final MalwareScanningPropertiesResponse? malwareScanning;
  /// Indicates whether the settings defined for this storage account should override the settings defined for the subscription.
  final bool? overrideSubscriptionLevelSettings;
  /// Properties of Sensitive Data Discovery.
  final SensitiveDataDiscoveryPropertiesResponse? sensitiveDataDiscovery;

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
      'malwareScanning': ?malwareScanning == null ? null : malwareScanning!.toMap(),
      'overrideSubscriptionLevelSettings': ?overrideSubscriptionLevelSettings,
      'sensitiveDataDiscovery': ?sensitiveDataDiscovery == null ? null : sensitiveDataDiscovery!.toMap(),
    };
  }

  factory DefenderForStorageSettingPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForStorageSettingPropertiesResponse(
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      malwareScanning: map['malwareScanning'] == null ? null : MalwareScanningPropertiesResponse.fromMap((map['malwareScanning'] as Map).cast<String, dynamic>()),
      overrideSubscriptionLevelSettings: map['overrideSubscriptionLevelSettings'] == null ? null : map['overrideSubscriptionLevelSettings'] as bool,
      sensitiveDataDiscovery: map['sensitiveDataDiscovery'] == null ? null : SensitiveDataDiscoveryPropertiesResponse.fromMap((map['sensitiveDataDiscovery'] as Map).cast<String, dynamic>()),
    );
  }
}

