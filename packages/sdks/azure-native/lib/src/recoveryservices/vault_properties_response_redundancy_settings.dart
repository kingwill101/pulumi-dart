// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The redundancy Settings of a Vault
class VaultPropertiesResponseRedundancySettings {
  /// Flag to show if Cross Region Restore is enabled on the Vault or not
  final pulumi.Input<String?>? crossRegionRestore;
  /// The storage redundancy setting of a vault
  final pulumi.Input<String?>? standardTierStorageRedundancy;

  /// Creates a new [VaultPropertiesResponseRedundancySettings].
  /// [crossRegionRestore] Flag to show if Cross Region Restore is enabled on the Vault or not
  /// [standardTierStorageRedundancy] The storage redundancy setting of a vault
  const VaultPropertiesResponseRedundancySettings({
    this.crossRegionRestore,
    this.standardTierStorageRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestore': ?crossRegionRestore,
      'standardTierStorageRedundancy': ?standardTierStorageRedundancy,
    };
  }

  factory VaultPropertiesResponseRedundancySettings.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponseRedundancySettings(
      crossRegionRestore: (() { final guardedValue = map['crossRegionRestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardTierStorageRedundancy: (() { final guardedValue = map['standardTierStorageRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
