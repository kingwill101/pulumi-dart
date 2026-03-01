// ignore_for_file: unused_element, unnecessary_cast

import 'memcache_parameters_response_memcache_v1beta2.dart';

class NodeResponseMemcacheV1beta2 {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final String host;
  /// The full version of memcached server running on this node. e.g. - memcached-1.5.16
  final String memcacheFullVersion;
  /// Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  final String memcacheVersion;
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final String nodeId;
  /// User defined parameters currently applied to the node.
  final MemcacheParametersResponseMemcacheV1beta2 parameters;
  /// The port number of the Memcached server on this node.
  final int port;
  /// Current state of the Memcached node.
  final String state;
  /// Returns true if there is an update waiting to be applied
  final bool updateAvailable;
  /// Location (GCP Zone) for the Memcached node.
  final String zone;

  /// Creates a new [NodeResponseMemcacheV1beta2].
  /// [host] Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  /// [memcacheFullVersion] The full version of memcached server running on this node. e.g. - memcached-1.5.16
  /// [memcacheVersion] Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  /// [nodeId] Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  /// [parameters] User defined parameters currently applied to the node.
  /// [port] The port number of the Memcached server on this node.
  /// [state] Current state of the Memcached node.
  /// [updateAvailable] Returns true if there is an update waiting to be applied
  /// [zone] Location (GCP Zone) for the Memcached node.
  NodeResponseMemcacheV1beta2({
    required this.host,
    required this.memcacheFullVersion,
    required this.memcacheVersion,
    required this.nodeId,
    required this.parameters,
    required this.port,
    required this.state,
    required this.updateAvailable,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'memcacheFullVersion': memcacheFullVersion,
      'memcacheVersion': memcacheVersion,
      'nodeId': nodeId,
      'parameters': parameters.toMap(),
      'port': port,
      'state': state,
      'updateAvailable': updateAvailable,
      'zone': zone,
    };
  }

  factory NodeResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeResponseMemcacheV1beta2(
      host: map['host'] as String,
      memcacheFullVersion: map['memcacheFullVersion'] as String,
      memcacheVersion: map['memcacheVersion'] as String,
      nodeId: map['nodeId'] as String,
      parameters: MemcacheParametersResponseMemcacheV1beta2.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
      state: map['state'] as String,
      updateAvailable: map['updateAvailable'] as bool,
      zone: map['zone'] as String,
    );
  }
}

