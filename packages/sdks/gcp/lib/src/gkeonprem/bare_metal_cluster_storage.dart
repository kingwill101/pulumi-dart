// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_storage_lvp_node_mounts_config.dart';
import 'bare_metal_cluster_storage_lvp_share_config.dart';

class BareMetalClusterStorage {
  /// Specifies the config for local PersistentVolumes backed
  /// by mounted node disks. These disks need to be formatted and mounted by the
  /// user, which can be done before or after cluster creation.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorageLvpNodeMountsConfig> lvpNodeMountsConfig;
  /// Specifies the config for local PersistentVolumes backed by
  /// subdirectories in a shared filesystem. These subdirectores are
  /// automatically created during cluster creation.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorageLvpShareConfig> lvpShareConfig;

  /// Creates a new [BareMetalClusterStorage].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by
  BareMetalClusterStorage({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpNodeMountsConfig': pulumi.Input.mapInputValue<BareMetalClusterStorageLvpNodeMountsConfig, Map<String, dynamic>>(lvpNodeMountsConfig, (value) => value.toMap()),
      'lvpShareConfig': pulumi.Input.mapInputValue<BareMetalClusterStorageLvpShareConfig, Map<String, dynamic>>(lvpShareConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterStorage.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorage(
      lvpNodeMountsConfig: (BareMetalClusterStorageLvpNodeMountsConfig.fromMap((map['lvpNodeMountsConfig'] as Map).cast<String, dynamic>())).input(),
      lvpShareConfig: (BareMetalClusterStorageLvpShareConfig.fromMap((map['lvpShareConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

