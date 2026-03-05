// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_private_registry_access_config.dart';
import 'get_cluster_node_config_containerd_config_registry_host.dart';
import 'get_cluster_node_config_containerd_config_writable_cgroup.dart';

class GetClusterNodeConfigContainerdConfig {
  /// Parameters for private container registries configuration.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>> privateRegistryAccessConfigs;
  /// Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigRegistryHost>> registryHosts;
  /// Parameters for writable cgroups configuration.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigWritableCgroup>> writableCgroups;

  /// Creates a new [GetClusterNodeConfigContainerdConfig].
  /// [privateRegistryAccessConfigs] Parameters for private container registries configuration.
  /// [registryHosts] Configures containerd registry host configuration. Each registry_hosts entry represents a hosts.toml file.
  /// [writableCgroups] Parameters for writable cgroups configuration.
  GetClusterNodeConfigContainerdConfig({
    required this.privateRegistryAccessConfigs,
    required this.registryHosts,
    required this.writableCgroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateRegistryAccessConfigs': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>, List<Map<String, dynamic>>>(privateRegistryAccessConfigs, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registryHosts': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigRegistryHost>, List<Map<String, dynamic>>>(registryHosts, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigRegistryHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'writableCgroups': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigWritableCgroup>, List<Map<String, dynamic>>>(writableCgroups, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigWritableCgroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNodeConfigContainerdConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfig(
      privateRegistryAccessConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig>(map['privateRegistryAccessConfigs']!, (value) => GetClusterNodeConfigContainerdConfigPrivateRegistryAccessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      registryHosts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigRegistryHost>(map['registryHosts']!, (value) => GetClusterNodeConfigContainerdConfigRegistryHost.fromMap((value as Map).cast<String, dynamic>()))),
      writableCgroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigWritableCgroup>(map['writableCgroups']!, (value) => GetClusterNodeConfigContainerdConfigWritableCgroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

