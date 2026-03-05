// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_config_containerd_config_registry_host_host.dart';

class ClusterNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final pulumi.Input<List<ClusterNodeConfigContainerdConfigRegistryHostHost>>? hosts;
  /// Defines the host name of the registry server.
  final pulumi.Input<String> server;

  /// Creates a new [ClusterNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  ClusterNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<ClusterNodeConfigContainerdConfigRegistryHostHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<ClusterNodeConfigContainerdConfigRegistryHostHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'server': server,
    };
  }

  factory ClusterNodeConfigContainerdConfigRegistryHost.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigContainerdConfigRegistryHost(
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNodeConfigContainerdConfigRegistryHostHost>(guardedValue, (value) => ClusterNodeConfigContainerdConfigRegistryHostHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}

