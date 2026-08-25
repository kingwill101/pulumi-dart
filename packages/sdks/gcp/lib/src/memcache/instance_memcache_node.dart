// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMemcacheNode {
  /// (Output)
  /// Hostname or IP address of the Memcached node used by the clients to connect to the Memcached server on this node.
  final pulumi.Input<String?>? host;
  /// (Output)
  /// Identifier of the Memcached node. The node id does not include project or location like the Memcached instance name.
  final pulumi.Input<String?>? nodeId;
  /// (Output)
  /// The port number of the Memcached server on this node.
  final pulumi.Input<int?>? port;
  /// (Output)
  /// Current state of the Memcached node.
  final pulumi.Input<String?>? state;
  /// (Output)
  /// Location (GCP Zone) for the Memcached node.
  final pulumi.Input<String?>? zone;

  /// Creates a new [InstanceMemcacheNode].
  /// [host] (Output)
  /// [nodeId] (Output)
  /// [port] (Output)
  /// [state] (Output)
  /// [zone] (Output)
  const InstanceMemcacheNode({
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
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
