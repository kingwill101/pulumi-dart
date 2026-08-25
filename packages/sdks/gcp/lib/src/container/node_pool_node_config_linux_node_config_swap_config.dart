// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_linux_node_config_swap_config_boot_disk_profile.dart';
import 'node_pool_node_config_linux_node_config_swap_config_dedicated_local_ssd_profile.dart';
import 'node_pool_node_config_linux_node_config_swap_config_encryption_config.dart';
import 'node_pool_node_config_linux_node_config_swap_config_ephemeral_local_ssd_profile.dart';

class NodePoolNodeConfigLinuxNodeConfigSwapConfig {
  /// Swap on the node's boot disk.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile?>? bootDiskProfile;
  /// Provisions a new, separate local NVMe SSD exclusively for swap.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile?>? dedicatedLocalSsdProfile;
  /// Enables or disables swap for the node pool.
  final pulumi.Input<bool?>? enabled;
  /// If omitted, swap space is encrypted by default.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig?>? encryptionConfig;
  /// Swap on the local SSD shared with pod ephemeral storage.
  final pulumi.Input<NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile?>? ephemeralLocalSsdProfile;

  /// Creates a new [NodePoolNodeConfigLinuxNodeConfigSwapConfig].
  /// [bootDiskProfile] Swap on the node's boot disk.
  /// [dedicatedLocalSsdProfile] Provisions a new, separate local NVMe SSD exclusively for swap.
  /// [enabled] Enables or disables swap for the node pool.
  /// [encryptionConfig] If omitted, swap space is encrypted by default.
  /// [ephemeralLocalSsdProfile] Swap on the local SSD shared with pod ephemeral storage.
  const NodePoolNodeConfigLinuxNodeConfigSwapConfig({
    this.bootDiskProfile,
    this.dedicatedLocalSsdProfile,
    this.enabled,
    this.encryptionConfig,
    this.ephemeralLocalSsdProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskProfile': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile, Map<String, dynamic>>(bootDiskProfile, (value) => value.toMap()),
      'dedicatedLocalSsdProfile': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile, Map<String, dynamic>>(dedicatedLocalSsdProfile, (value) => value.toMap()),
      'enabled': ?enabled,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'ephemeralLocalSsdProfile': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile, Map<String, dynamic>>(ephemeralLocalSsdProfile, (value) => value.toMap()),
    };
  }

  factory NodePoolNodeConfigLinuxNodeConfigSwapConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigLinuxNodeConfigSwapConfig(
      bootDiskProfile: (() { final guardedValue = map['bootDiskProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedLocalSsdProfile: (() { final guardedValue = map['dedicatedLocalSsdProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralLocalSsdProfile: (() { final guardedValue = map['ephemeralLocalSsdProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
