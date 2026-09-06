// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'malware_scanning_properties.dart';
import 'sensitive_data_discovery_properties.dart';

/// Defender for Storage resource properties.
class DefenderForStorageSettingProperties {
  /// Indicates whether Defender for Storage is enabled on this storage account.
  final pulumi.Input<bool?>? isEnabled;
  /// Properties of Malware Scanning.
  final pulumi.Input<MalwareScanningProperties?>? malwareScanning;
  /// Indicates whether the settings defined for this storage account should override the settings defined for the subscription.
  final pulumi.Input<bool?>? overrideSubscriptionLevelSettings;
  /// Properties of Sensitive Data Discovery.
  final pulumi.Input<SensitiveDataDiscoveryProperties?>? sensitiveDataDiscovery;

  /// Creates a new [DefenderForStorageSettingProperties].
  /// [isEnabled] Indicates whether Defender for Storage is enabled on this storage account.
  /// [malwareScanning] Properties of Malware Scanning.
  /// [overrideSubscriptionLevelSettings] Indicates whether the settings defined for this storage account should override the settings defined for the subscription.
  /// [sensitiveDataDiscovery] Properties of Sensitive Data Discovery.
  const DefenderForStorageSettingProperties({
    this.isEnabled,
    this.malwareScanning,
    this.overrideSubscriptionLevelSettings,
    this.sensitiveDataDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'malwareScanning': ?pulumi.Input.mapOptionalInputValue<MalwareScanningProperties, Map<String, dynamic>>(malwareScanning, (value) => value.toMap()),
      'overrideSubscriptionLevelSettings': ?overrideSubscriptionLevelSettings,
      'sensitiveDataDiscovery': ?pulumi.Input.mapOptionalInputValue<SensitiveDataDiscoveryProperties, Map<String, dynamic>>(sensitiveDataDiscovery, (value) => value.toMap()),
    };
  }

  factory DefenderForStorageSettingProperties.fromMap(Map<String, dynamic> map) {
    return DefenderForStorageSettingProperties(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      malwareScanning: (() { final guardedValue = map['malwareScanning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MalwareScanningProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrideSubscriptionLevelSettings: (() { final guardedValue = map['overrideSubscriptionLevelSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sensitiveDataDiscovery: (() { final guardedValue = map['sensitiveDataDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SensitiveDataDiscoveryProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
