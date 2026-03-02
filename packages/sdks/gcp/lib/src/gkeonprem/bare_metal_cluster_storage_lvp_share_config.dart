// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_storage_lvp_share_config_lvp_config.dart';

class BareMetalClusterStorageLvpShareConfig {
  /// Defines the machine path and storage class for the LVP Share.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterStorageLvpShareConfigLvpConfig> lvpConfig;
  /// The number of subdirectories to create under path.
  final pulumi.Input<int>? sharedPathPvCount;

  /// Creates a new [BareMetalClusterStorageLvpShareConfig].
  /// [lvpConfig] Defines the machine path and storage class for the LVP Share.
  /// [sharedPathPvCount] The number of subdirectories to create under path.
  BareMetalClusterStorageLvpShareConfig({
    required this.lvpConfig,
    this.sharedPathPvCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpConfig': pulumi.Input.mapInputValue<BareMetalClusterStorageLvpShareConfigLvpConfig, Map<String, dynamic>>(lvpConfig, (value) => value.toMap()),
      'sharedPathPvCount': ?sharedPathPvCount,
    };
  }

  factory BareMetalClusterStorageLvpShareConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterStorageLvpShareConfig(
      lvpConfig: (BareMetalClusterStorageLvpShareConfigLvpConfig.fromMap((map['lvpConfig'] as Map).cast<String, dynamic>())).input(),
      sharedPathPvCount: map['sharedPathPvCount'] == null ? null : (map['sharedPathPvCount'] as int).input(),
    );
  }
}

