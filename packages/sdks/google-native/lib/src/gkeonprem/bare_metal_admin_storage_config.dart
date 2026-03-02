// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_lvp_config.dart';
import 'bare_metal_lvp_share_config.dart';

/// BareMetalAdminStorageConfig specifies the cluster storage configuration.
class BareMetalAdminStorageConfig {
  /// Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  final pulumi.Input<BareMetalLvpConfig> lvpNodeMountsConfig;
  /// Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  final pulumi.Input<BareMetalLvpShareConfig> lvpShareConfig;

  /// Creates a new [BareMetalAdminStorageConfig].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  BareMetalAdminStorageConfig({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpNodeMountsConfig': pulumi.Input.mapInputValue<BareMetalLvpConfig, Map<String, dynamic>>(lvpNodeMountsConfig, (value) => value.toMap()),
      'lvpShareConfig': pulumi.Input.mapInputValue<BareMetalLvpShareConfig, Map<String, dynamic>>(lvpShareConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminStorageConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminStorageConfig(
      lvpNodeMountsConfig: (BareMetalLvpConfig.fromMap((map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>())).input(),
      lvpShareConfig: (BareMetalLvpShareConfig.fromMap((map['lvpShareConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

