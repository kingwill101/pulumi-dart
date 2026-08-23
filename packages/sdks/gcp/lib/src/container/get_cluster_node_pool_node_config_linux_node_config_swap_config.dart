// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_linux_node_config_swap_config_boot_disk_profile.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_swap_config_dedicated_local_ssd_profile.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_swap_config_encryption_config.dart';
import 'get_cluster_node_pool_node_config_linux_node_config_swap_config_ephemeral_local_ssd_profile.dart';

class GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig {
  /// Swap on the node's boot disk.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>> bootDiskProfiles;
  /// Provisions a new, separate local NVMe SSD exclusively for swap.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>> dedicatedLocalSsdProfiles;
  /// Enables or disables swap for the node pool.
  final pulumi.Input<bool> enabled;
  /// If omitted, swap space is encrypted by default.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>> encryptionConfigs;
  /// Swap on the local SSD shared with pod ephemeral storage.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>> ephemeralLocalSsdProfiles;

  /// Creates a new [GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig].
  /// [bootDiskProfiles] Swap on the node's boot disk.
  /// [dedicatedLocalSsdProfiles] Provisions a new, separate local NVMe SSD exclusively for swap.
  /// [enabled] Enables or disables swap for the node pool.
  /// [encryptionConfigs] If omitted, swap space is encrypted by default.
  /// [ephemeralLocalSsdProfiles] Swap on the local SSD shared with pod ephemeral storage.
  const GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig({
    required this.bootDiskProfiles,
    required this.dedicatedLocalSsdProfiles,
    required this.enabled,
    required this.encryptionConfigs,
    required this.ephemeralLocalSsdProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskProfiles': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>, List<Map<String, dynamic>>>(bootDiskProfiles, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedLocalSsdProfiles': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>, List<Map<String, dynamic>>>(dedicatedLocalSsdProfiles, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'encryptionConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralLocalSsdProfiles': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>, List<Map<String, dynamic>>>(ephemeralLocalSsdProfiles, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfig(
      bootDiskProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>(map['bootDiskProfiles']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap((value as Map).cast<String, dynamic>()))),
      dedicatedLocalSsdProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>(map['dedicatedLocalSsdProfiles']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>(map['encryptionConfigs']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ephemeralLocalSsdProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>(map['ephemeralLocalSsdProfiles']!, (value) => GetClusterNodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
