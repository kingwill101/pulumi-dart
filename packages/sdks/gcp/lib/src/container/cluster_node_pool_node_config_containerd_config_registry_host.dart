// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_node_config_containerd_config_registry_host_host.dart';

class ClusterNodePoolNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final pulumi.Input<List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>>? hosts;
  /// Defines the host name of the registry server.
  final pulumi.Input<String> server;

  /// Creates a new [ClusterNodePoolNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  ClusterNodePoolNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'server': server,
    };
  }

  factory ClusterNodePoolNodeConfigContainerdConfigRegistryHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigContainerdConfigRegistryHost(
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost>(map['hosts']!, (value) => ClusterNodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      server: (map['server'] as String).input(),
    );
  }
}

