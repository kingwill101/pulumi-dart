// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_node_config_containerd_config_registry_host_host.dart';

class NodePoolNodeConfigContainerdConfigRegistryHost {
  /// Configures a list of host-specific configurations for the server.
  final pulumi.Input<List<NodePoolNodeConfigContainerdConfigRegistryHostHost>>?
  hosts;

  /// Defines the host name of the registry server.
  final pulumi.Input<String> server;

  /// Creates a new [NodePoolNodeConfigContainerdConfigRegistryHost].
  /// [hosts] Configures a list of host-specific configurations for the server.
  /// [server] Defines the host name of the registry server.
  NodePoolNodeConfigContainerdConfigRegistryHost({
    this.hosts,
    required this.server,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodePoolNodeConfigContainerdConfigRegistryHostHost>,
            List<Map<String, dynamic>>
          >(
            hosts,
            (value) =>
                pulumi.Input.encodeList<
                  NodePoolNodeConfigContainerdConfigRegistryHostHost,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'server': server,
    };
  }

  factory NodePoolNodeConfigContainerdConfigRegistryHost.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolNodeConfigContainerdConfigRegistryHost(
      hosts: (() {
        final guardedValue = map['hosts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NodePoolNodeConfigContainerdConfigRegistryHostHost
          >(
            guardedValue,
            (value) =>
                NodePoolNodeConfigContainerdConfigRegistryHostHost.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      server: pulumi.Input.fromValue(map['server'] as String),
    );
  }
}
