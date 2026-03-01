// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_lvp_config.dart';
import 'bare_metal_lvp_share_config.dart';

/// BareMetalStorageConfig specifies the cluster storage configuration.
class BareMetalStorageConfig {
  /// Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  final BareMetalLvpConfig lvpNodeMountsConfig;
  /// Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  final BareMetalLvpShareConfig lvpShareConfig;

  /// Creates a new [BareMetalStorageConfig].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  BareMetalStorageConfig({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpNodeMountsConfig': lvpNodeMountsConfig.toMap(),
      'lvpShareConfig': lvpShareConfig.toMap(),
    };
  }

  factory BareMetalStorageConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalStorageConfig(
      lvpNodeMountsConfig: BareMetalLvpConfig.fromMap((map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>()),
      lvpShareConfig: BareMetalLvpShareConfig.fromMap((map['lvpShareConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

