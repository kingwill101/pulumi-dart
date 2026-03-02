// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'memcache_parameters_response.dart';

class NodeResponse {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final pulumi.Input<String> host;
  /// The full version of memcached server running on this node. e.g. - memcached-1.5.16
  final pulumi.Input<String> memcacheFullVersion;
  /// Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  final pulumi.Input<String> memcacheVersion;
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final pulumi.Input<String> nodeId;
  /// User defined parameters currently applied to the node.
  final pulumi.Input<MemcacheParametersResponse> parameters;
  /// The port number of the Memcached server on this node.
  final pulumi.Input<int> port;
  /// Current state of the Memcached node.
  final pulumi.Input<String> state;
  /// Location (GCP Zone) for the Memcached node.
  final pulumi.Input<String> zone;

  /// Creates a new [NodeResponse].
  /// [host] Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  /// [memcacheFullVersion] The full version of memcached server running on this node. e.g. - memcached-1.5.16
  /// [memcacheVersion] Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  /// [nodeId] Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  /// [parameters] User defined parameters currently applied to the node.
  /// [port] The port number of the Memcached server on this node.
  /// [state] Current state of the Memcached node.
  /// [zone] Location (GCP Zone) for the Memcached node.
  NodeResponse({
    required this.host,
    required this.memcacheFullVersion,
    required this.memcacheVersion,
    required this.nodeId,
    required this.parameters,
    required this.port,
    required this.state,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'memcacheFullVersion': memcacheFullVersion,
      'memcacheVersion': memcacheVersion,
      'nodeId': nodeId,
      'parameters': pulumi.Input.mapInputValue<MemcacheParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'port': port,
      'state': state,
      'zone': zone,
    };
  }

  factory NodeResponse.fromMap(Map<String, dynamic> map) {
    return NodeResponse(
      host: (map['host'] as String).input(),
      memcacheFullVersion: (map['memcacheFullVersion'] as String).input(),
      memcacheVersion: (map['memcacheVersion'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      parameters: (MemcacheParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>())).input(),
      port: (map['port'] as int).input(),
      state: (map['state'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

