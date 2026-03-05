// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_lvp_config_response.dart';
import 'bare_metal_lvp_share_config_response.dart';

/// BareMetalStorageConfig specifies the cluster storage configuration.
class BareMetalStorageConfigResponse {
  /// Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  final pulumi.Input<BareMetalLvpConfigResponse> lvpNodeMountsConfig;
  /// Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  final pulumi.Input<BareMetalLvpShareConfigResponse> lvpShareConfig;

  /// Creates a new [BareMetalStorageConfigResponse].
  /// [lvpNodeMountsConfig] Specifies the config for local PersistentVolumes backed by mounted node disks. These disks need to be formatted and mounted by the user, which can be done before or after cluster creation.
  /// [lvpShareConfig] Specifies the config for local PersistentVolumes backed by subdirectories in a shared filesystem. These subdirectores are automatically created during cluster creation.
  BareMetalStorageConfigResponse({
    required this.lvpNodeMountsConfig,
    required this.lvpShareConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lvpNodeMountsConfig': pulumi.Input.mapInputValue<BareMetalLvpConfigResponse, Map<String, dynamic>>(lvpNodeMountsConfig, (value) => value.toMap()),
      'lvpShareConfig': pulumi.Input.mapInputValue<BareMetalLvpShareConfigResponse, Map<String, dynamic>>(lvpShareConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalStorageConfigResponse(
      lvpNodeMountsConfig: pulumi.Input.fromValue(BareMetalLvpConfigResponse.fromMap((map['lvpNodeMountsConfig']! as Map).cast<String, dynamic>())),
      lvpShareConfig: pulumi.Input.fromValue(BareMetalLvpShareConfigResponse.fromMap((map['lvpShareConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

