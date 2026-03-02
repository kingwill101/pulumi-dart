// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeFqdn {
  /// Specifies the node's address family. The default is 'unspecified', or IP-agnostic. This needs to be specified inside the fqdn (fully qualified domain name).
  final pulumi.Input<String>? addressFamily;
  /// Specifies whether the node should scale to the IP address set returned by DNS.
  final pulumi.Input<String>? autopopulate;
  /// Specifies the number of attempts to resolve a domain name. The default is 5.
  final pulumi.Input<int>? downinterval;
  /// Specifies the amount of time before sending the next DNS query. Default is 3600. This needs to be specified inside the fqdn (fully qualified domain name).
  final pulumi.Input<String>? interval;
  /// Name of the node
  final pulumi.Input<String>? name;

  /// Creates a new [NodeFqdn].
  /// [addressFamily] Specifies the node's address family. The default is 'unspecified', or IP-agnostic. This needs to be specified inside the fqdn (fully qualified domain name).
  /// [autopopulate] Specifies whether the node should scale to the IP address set returned by DNS.
  /// [downinterval] Specifies the number of attempts to resolve a domain name. The default is 5.
  /// [interval] Specifies the amount of time before sending the next DNS query. Default is 3600. This needs to be specified inside the fqdn (fully qualified domain name).
  /// [name] Name of the node
  NodeFqdn({
    this.addressFamily,
    this.autopopulate,
    this.downinterval,
    this.interval,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'autopopulate': ?autopopulate,
      'downinterval': ?downinterval,
      'interval': ?interval,
      'name': ?name,
    };
  }

  factory NodeFqdn.fromMap(Map<String, dynamic> map) {
    return NodeFqdn(
      addressFamily: map['addressFamily'] == null ? null : (map['addressFamily']! as String).input(),
      autopopulate: map['autopopulate'] == null ? null : (map['autopopulate']! as String).input(),
      downinterval: map['downinterval'] == null ? null : (map['downinterval']! as int).input(),
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

