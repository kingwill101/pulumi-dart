// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMemcacheNode {
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final pulumi.Input<String> host;
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final pulumi.Input<String> nodeId;
  /// The port number of the Memcached server on this node.
  final pulumi.Input<int> port;
  /// Current state of the Memcached node.
  final pulumi.Input<String> state;
  /// Location (GCP Zone) for the Memcached node.
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceMemcacheNode].
  /// [host] Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  /// [nodeId] Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  /// [port] The port number of the Memcached server on this node.
  /// [state] Current state of the Memcached node.
  /// [zone] Location (GCP Zone) for the Memcached node.
  GetInstanceMemcacheNode({
    required this.host,
    required this.nodeId,
    required this.port,
    required this.state,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'nodeId': nodeId,
      'port': port,
      'state': state,
      'zone': zone,
    };
  }

  factory GetInstanceMemcacheNode.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheNode(
      host: (map['host'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      port: (map['port'] as int).input(),
      state: (map['state'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

