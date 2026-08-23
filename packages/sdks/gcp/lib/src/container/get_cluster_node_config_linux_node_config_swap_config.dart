// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_linux_node_config_swap_config_boot_disk_profile.dart';
import 'get_cluster_node_config_linux_node_config_swap_config_dedicated_local_ssd_profile.dart';
import 'get_cluster_node_config_linux_node_config_swap_config_encryption_config.dart';
import 'get_cluster_node_config_linux_node_config_swap_config_ephemeral_local_ssd_profile.dart';

class GetClusterNodeConfigLinuxNodeConfigSwapConfig {
  /// Swap on the node's boot disk.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>> bootDiskProfiles;
  /// Provisions a new, separate local NVMe SSD exclusively for swap.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>> dedicatedLocalSsdProfiles;
  /// Enables or disables swap for the node pool.
  final pulumi.Input<bool> enabled;
  /// If omitted, swap space is encrypted by default.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>> encryptionConfigs;
  /// Swap on the local SSD shared with pod ephemeral storage.
  final pulumi.Input<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>> ephemeralLocalSsdProfiles;

  /// Creates a new [GetClusterNodeConfigLinuxNodeConfigSwapConfig].
  /// [bootDiskProfiles] Swap on the node's boot disk.
  /// [dedicatedLocalSsdProfiles] Provisions a new, separate local NVMe SSD exclusively for swap.
  /// [enabled] Enables or disables swap for the node pool.
  /// [encryptionConfigs] If omitted, swap space is encrypted by default.
  /// [ephemeralLocalSsdProfiles] Swap on the local SSD shared with pod ephemeral storage.
  const GetClusterNodeConfigLinuxNodeConfigSwapConfig({
    required this.bootDiskProfiles,
    required this.dedicatedLocalSsdProfiles,
    required this.enabled,
    required this.encryptionConfigs,
    required this.ephemeralLocalSsdProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskProfiles': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>, List<Map<String, dynamic>>>(bootDiskProfiles, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedLocalSsdProfiles': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>, List<Map<String, dynamic>>>(dedicatedLocalSsdProfiles, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'encryptionConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralLocalSsdProfiles': pulumi.Input.mapInputValue<List<GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>, List<Map<String, dynamic>>>(ephemeralLocalSsdProfiles, (value) => pulumi.Input.encodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigLinuxNodeConfigSwapConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLinuxNodeConfigSwapConfig(
      bootDiskProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>(map['bootDiskProfiles']!, (value) => GetClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap((value as Map).cast<String, dynamic>()))),
      dedicatedLocalSsdProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>(map['dedicatedLocalSsdProfiles']!, (value) => GetClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>(map['encryptionConfigs']!, (value) => GetClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      ephemeralLocalSsdProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>(map['ephemeralLocalSsdProfiles']!, (value) => GetClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
