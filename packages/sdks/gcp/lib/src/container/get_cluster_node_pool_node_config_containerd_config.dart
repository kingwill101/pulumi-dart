// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_pool_node_config_containerd_config_registry_host.dart';
import 'get_cluster_node_pool_node_config_containerd_config_writable_cgroup.dart';

class GetClusterNodePoolNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>> privateRegistryAccessConfigs;
  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHost>> registryHosts;
  /// Parameters for writable cgroups configuration.
  final pulumi.Input<List<GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup>> writableCgroups;

  /// Creates a new [GetClusterNodePoolNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  const GetClusterNodePoolNodeConfigContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>, List<Map<String, dynamic>>>(privateRegistryAccessConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registryHosts': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': pulumi.Input.mapInputValue<List<GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup>, List<Map<String, dynamic>>>(writableCgroups, (value) => pulumi.Input.encodeList<GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig>(map['privateRegistryAccessConfigs']!, (value) => GetClusterNodePoolNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      registryHosts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigRegistryHost>(map['registryHosts']!, (value) => GetClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))),
      writableCgroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup>(map['writableCgroups']!, (value) => GetClusterNodePoolNodeConfigContainerdConfigWritableCgroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

