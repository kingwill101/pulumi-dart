// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host.dart';
import 'get_cluster_node_pool_default_node_config_default_containerd_config_writable_cgroup.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig {
  /// Parameters for private container registries configuration.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig>> privateRegistryAccessConfigs;
  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost>> registryHosts;
  /// Parameters for writable cgroups configuration.
  final pulumi.Input<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup>> writableCgroups;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  const GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfigs': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig>, List<Map<String, dynamic>>>(privateRegistryAccessConfigs, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registryHosts': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': pulumi.Input.mapInputValue<List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup>, List<Map<String, dynamic>>>(writableCgroups, (value) => pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig>(map['privateRegistryAccessConfigs']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigPrivateRegistryAccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      registryHosts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost>(map['registryHosts']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))),
      writableCgroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup>(map['writableCgroups']!, (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigWritableCgroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

