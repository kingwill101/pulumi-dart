// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_private_registry_access_config.dart';
import 'cluster_node_config_containerd_config_registry_host.dart';
import 'cluster_node_config_containerd_config_writable_cgroups.dart';

class ClusterNodeConfigContainerdConfig {
  /// Configuration for private container registries. There are two fields in this config:
  final pulumi.Input<ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>? privateRegistryAccessConfig;
  /// Defines containerd registry host configuration. Each `registryHosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  final pulumi.Input<List<ClusterNodeConfigContainerdConfigRegistryHost>>? registryHosts;
  /// Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writableCgroups` block supports:
  final pulumi.Input<ClusterNodeConfigContainerdConfigWritableCgroups>? writableCgroups;

  /// Creates a new [ClusterNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfig] Configuration for private container registries. There are two fields in this config:
  /// [registryHosts] Defines containerd registry host configuration. Each `registryHosts` entry represents a `hosts.toml` file. See [customize containerd configuration in GKE nodes](https://docs.cloud.google.com/kubernetes-engine/docs/how-to/customize-containerd-configuration#registryHosts) for more detail. Example:
  /// [writableCgroups] Configuration for writable cgroups. This allows containers to have a writable `/sys/fs/cgroup` directory, which is required for some workloads to create their own sub-cgroups. The `writableCgroups` block supports:
  const ClusterNodeConfigContainerdConfig({
    this.privateRegistryAccessConfig,
    this.registryHosts,
    this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfig': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(privateRegistryAccessConfig, (value) => value.toMap()),
      'registryHosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeConfigContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': ?pulumi.Input.mapOptionalInputValue<ClusterNodeConfigContainerdConfigWritableCgroups, Map<String, dynamic>>(writableCgroups, (value) => value.toMap()),
    };
  }

  factory ClusterNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfig(
      privateRegistryAccessConfig: (() { final guardedValue = map['privateRegistryAccessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryHosts: (() { final guardedValue = map['registryHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHost>(guardedValue, (value) => ClusterNodeConfigContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      writableCgroups: (() { final guardedValue = map['writableCgroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodeConfigContainerdConfigWritableCgroups.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
