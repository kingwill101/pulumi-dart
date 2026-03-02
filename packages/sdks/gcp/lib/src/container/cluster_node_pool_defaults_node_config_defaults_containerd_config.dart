// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_private_registry_access_config.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host.dart';
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_writable_cgroups.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig {
  /// Configuration for private container registries. There are two fields in this config:
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig>? privateRegistryAccessConfig;
  /// Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost>>? registryHosts;
  /// Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  final pulumi.Input<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups>? writableCgroups;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig].
  /// [privateRegistryAccessConfig] Configuration for private container registries. There are two fields in this config:
  /// [registryHosts] Defines containerd registry host configuration. Each `registry_hosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  /// [writableCgroups] Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writable_cgroups` block supports:
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(privateRegistryAccessConfig, (value) => value.toMap()),
      'registryHosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups, Map<String, dynamic>>(writableCgroups, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfig(
      privateRegistryAccessConfig: map['privateRegistryAccessConfig'] == null ? null : (ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigPrivateRegistryAccessConfig.fromMap((map['privateRegistryAccessConfig'] as Map).cast<String, dynamic>())).input(),
      registryHosts: map['registryHosts'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost>(map['registryHosts'], (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      writableCgroups: map['writableCgroups'] == null ? null : (ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigWritableCgroups.fromMap((map['writableCgroups'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

