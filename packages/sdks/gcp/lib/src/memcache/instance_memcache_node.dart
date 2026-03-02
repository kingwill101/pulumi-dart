// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMemcacheNode {
  /// (Output)
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final pulumi.Input<String>? host;
  /// (Output)
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final pulumi.Input<String>? nodeId;
  /// (Output)
  /// The port number of the Memcached server on this node.
  final pulumi.Input<int>? port;
  /// (Output)
  /// Current state of the Memcached node.
  final pulumi.Input<String>? state;
  /// (Output)
  /// Location (GCP Zone) for the Memcached node.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceMemcacheNode].
  /// [host] (Output)
  /// [nodeId] (Output)
  /// [port] (Output)
  /// [state] (Output)
  /// [zone] (Output)
  InstanceMemcacheNode({
    this.host,
    this.nodeId,
    this.port,
    this.state,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'nodeId': ?nodeId,
      'port': ?port,
      'state': ?state,
      'zone': ?zone,
    };
  }

  factory InstanceMemcacheNode.fromMap(Map<String, dynamic> map) {
    return InstanceMemcacheNode(
      host: map['host'] == null ? null : (map['host'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

