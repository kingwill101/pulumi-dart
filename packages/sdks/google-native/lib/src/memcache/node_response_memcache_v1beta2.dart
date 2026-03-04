// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'memcache_parameters_response_memcache_v1beta2.dart';

class NodeResponseMemcacheV1beta2 {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final pulumi.Input<String> host;

  /// The full version of memcached server running on this node. e.g. - memcached-1.5.16
  final pulumi.Input<String> memcacheFullVersion;

  /// Major version of memcached server running on this node, e.g. MEMCACHE_1_5
  final pulumi.Input<String> memcacheVersion;

  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final pulumi.Input<String> nodeId;

  /// User defined parameters currently applied to the node.
  final pulumi.Input<MemcacheParametersResponseMemcacheV1beta2> parameters;

  /// The port number of the Memcached server on this node.
  final pulumi.Input<int> port;

  /// Current state of the Memcached node.
  final pulumi.Input<String> state;

  /// Returns true if there is an update waiting to be applied
  final pulumi.Input<bool> updateAvailable;

  /// Location (GCP Zone) for the Memcached node.
  final pulumi.Input<String> zone;

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
      'parameters':
          pulumi.Input.mapInputValue<
            MemcacheParametersResponseMemcacheV1beta2,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'port': port,
      'state': state,
      'updateAvailable': updateAvailable,
      'zone': zone,
    };
  }

  factory NodeResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeResponseMemcacheV1beta2(
      host: pulumi.Input.fromValue(map['host'] as String),
      memcacheFullVersion: pulumi.Input.fromValue(
        map['memcacheFullVersion'] as String,
      ),
      memcacheVersion: pulumi.Input.fromValue(map['memcacheVersion'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      parameters: pulumi.Input.fromValue(
        MemcacheParametersResponseMemcacheV1beta2.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      port: pulumi.Input.fromValue(map['port'] as int),
      state: pulumi.Input.fromValue(map['state'] as String),
      updateAvailable: pulumi.Input.fromValue(map['updateAvailable'] as bool),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
