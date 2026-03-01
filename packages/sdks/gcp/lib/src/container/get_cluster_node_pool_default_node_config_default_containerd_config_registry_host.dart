// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_default_node_config_default_containerd_config_registry_host_host.dart';

class GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final List<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost> hosts;
  /// Defines the host name of the registry server.
  final String server;

  /// Creates a new [GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost({
    required this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': pulumi.Input.encodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost, Map<String, dynamic>>(hosts, (value) => value.toMap()),
      'server': server,
    };
  }

  factory GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHost(
      hosts: pulumi.Input.decodeList<GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost>(map['hosts'], (value) => GetClusterNodePoolDefaultNodeConfigDefaultContainerdConfigRegistryHostHost.fromMap((value as Map).cast<String, dynamic>())),
      server: map['server'] as String,
    );
  }
}

