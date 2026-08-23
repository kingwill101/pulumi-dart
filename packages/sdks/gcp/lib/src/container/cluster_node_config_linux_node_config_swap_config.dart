// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_linux_node_config_swap_config_boot_disk_profile.dart';
import 'cluster_node_config_linux_node_config_swap_config_dedicated_local_ssd_profile.dart';
import 'cluster_node_config_linux_node_config_swap_config_encryption_config.dart';
import 'cluster_node_config_linux_node_config_swap_config_ephemeral_local_ssd_profile.dart';

class ClusterNodeConfigLinuxNodeConfigSwapConfig {
  /// Swap on the node's boot disk. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile>? bootDiskProfile;
  /// Provisions a new, separate local NVMe SSD exclusively for swap. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile>? dedicatedLocalSsdProfile;
  /// Enables or disables swap for the node pool.
  final pulumi.Input<bool>? enabled;
  /// If omitted, swap space is encrypted by default. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig>? encryptionConfig;
  /// Swap on the local SSD shared with pod ephemeral storage. Structure is documented below.
  final pulumi.Input<ClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile>? ephemeralLocalSsdProfile;

  /// Creates a new [ClusterNodeConfigLinuxNodeConfigSwapConfig].
  /// [bootDiskProfile] Swap on the node's boot disk. Structure is documented below.
  /// [dedicatedLocalSsdProfile] Provisions a new, separate local NVMe SSD exclusively for swap. Structure is documented below.
  /// [enabled] Enables or disables swap for the node pool.
  /// [encryptionConfig] If omitted, swap space is encrypted by default. Structure is documented below.
  /// [ephemeralLocalSsdProfile] Swap on the local SSD shared with pod ephemeral storage. Structure is documented below.
  const ClusterNodeConfigLinuxNodeConfigSwapConfig({
    this.bootDiskProfile,
    this.dedicatedLocalSsdProfile,
    this.enabled,
    this.encryptionConfig,
    this.ephemeralLocalSsdProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskProfile': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile, Map<String, dynamic>>(bootDiskProfile, (value) => value.toMap()),
      'dedicatedLocalSsdProfile': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile, Map<String, dynamic>>(dedicatedLocalSsdProfile, (value) => value.toMap()),
      'enabled': ?enabled,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'ephemeralLocalSsdProfile': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile, Map<String, dynamic>>(ephemeralLocalSsdProfile, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigLinuxNodeConfigSwapConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigLinuxNodeConfigSwapConfig(
      bootDiskProfile: (() { final guardedValue = map['bootDiskProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigSwapConfigBootDiskProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedLocalSsdProfile: (() { final guardedValue = map['dedicatedLocalSsdProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigSwapConfigDedicatedLocalSsdProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigSwapConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralLocalSsdProfile: (() { final guardedValue = map['ephemeralLocalSsdProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigLinuxNodeConfigSwapConfigEphemeralLocalSsdProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
