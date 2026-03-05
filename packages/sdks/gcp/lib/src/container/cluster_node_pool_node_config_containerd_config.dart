// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_containerd_config_private_registry_access_config.dart';
import 'cluster_node_pool_node_config_containerd_config_registry_host.dart';
import 'cluster_node_pool_node_config_containerd_config_writable_cgroups.dart';

class ClusterNodePoolNodeConfigContainerdConfig {
  /// Configuration for private container registries. There are two fields in this config:
  final pulumi.Input<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>? privateRegistryAccessConfig;
  /// Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  final pulumi.Input<List<ClusterNodePoolNodeConfigContainerdConfigRegistryHost>>? registryHosts;
  /// Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  final pulumi.Input<ClusterNodePoolNodeConfigContainerdConfigWritableCgroups>? writableCgroups;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfig] Configuration for private container registries. There are two fields in this config:
  /// [registryHosts] Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  /// [writableCgroups] Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  ClusterNodePoolNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(privateRegistryAccessConfig, (value) => value.toMap()),
      'registryHosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolNodeConfigContainerdConfigWritableCgroups, Map<String, dynamic>>(writableCgroups, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfig: (() { final guardedValue = map['privateRegistryAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryHosts: (() { final guardedValue = map['registryHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodePoolNodeConfigContainerdConfigRegistryHost>(guardedValue, (value) => ClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      writableCgroups: (() { final guardedValue = map['writableCgroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolNodeConfigContainerdConfigWritableCgroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

