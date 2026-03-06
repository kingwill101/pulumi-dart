// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_config_containerd_config_registry_host_host.dart';

class GetClusterNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final pulumi.Input<List<GetClusterNodeConfigContainerdConfigRegistryHostHost>> hosts;
  /// Defines the host name of the registry server.
  final pulumi.Input<String> server;

  /// Creates a new [GetClusterNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  const GetClusterNodeConfigContainerdConfigRegistryHost({
    required this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': pulumi.Input.mapInputValue<List<GetClusterNodeConfigContainerdConfigRegistryHostHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<GetClusterNodeConfigContainerdConfigRegistryHostHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'server': server,
    };
  }

  factory GetClusterNodeConfigContainerdConfigRegistryHost.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigContainerdConfigRegistryHost(
      hosts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodeConfigContainerdConfigRegistryHostHost>(map['hosts']!, (value) => GetClusterNodeConfigContainerdConfigRegistryHostHost.fromMap((value as Map).cast<String, dynamic>()))),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}

