// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_defaults_node_config_defaults_containerd_config_registry_host_host.dart';

class ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final pulumi.Input<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost>>? hosts;
  /// Defines the host name of the registry server.
  final pulumi.Input<String> server;

  /// Creates a new [ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'server': server,
    };
  }

  factory ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHost(
      hosts: map['hosts'] == null ? null : (pulumi.Input.decodeList<ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost>(map['hosts'], (value) => ClusterNodePoolDefaultsNodeConfigDefaultsContainerdConfigRegistryHostHost.fromMap((value as Map).cast<String, dynamic>()))).input(),
      server: (map['server'] as String).input(),
    );
  }
}

