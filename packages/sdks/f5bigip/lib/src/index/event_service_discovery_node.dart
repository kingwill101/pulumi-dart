// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventServiceDiscoveryNode {
  /// name of node
  final pulumi.Input<String>? id;
  /// ip of nonde
  final pulumi.Input<String>? ip;
  /// port
  final pulumi.Input<int>? port;

  /// Creates a new [EventServiceDiscoveryNode].
  /// [id] name of node
  /// [ip] ip of nonde
  /// [port] port
  EventServiceDiscoveryNode({
    this.id,
    this.ip,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ip': ?ip,
      'port': ?port,
    };
  }

  factory EventServiceDiscoveryNode.fromMap(Map<String, dynamic> map) {
    return EventServiceDiscoveryNode(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

