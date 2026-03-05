// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeFqdn {
  /// The FQDN node's address family.
  final pulumi.Input<String>? addressFamily;
  /// Specifies if the node should scale to the IP address set returned by DNS.
  final pulumi.Input<String> autopopulate;
  /// The number of attempts to resolve a domain name.
  final pulumi.Input<int> downinterval;
  /// The amount of time before sending the next DNS query.
  final pulumi.Input<String> interval;
  /// Name of the node.
  final pulumi.Input<String>? name;

  /// Creates a new [GetNodeFqdn].
  /// [addressFamily] The FQDN node's address family.
  /// [autopopulate] Specifies if the node should scale to the IP address set returned by DNS.
  /// [downinterval] The number of attempts to resolve a domain name.
  /// [interval] The amount of time before sending the next DNS query.
  /// [name] Name of the node.
  GetNodeFqdn({
    this.addressFamily,
    required this.autopopulate,
    required this.downinterval,
    required this.interval,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'autopopulate': autopopulate,
      'downinterval': downinterval,
      'interval': interval,
      'name': ?name,
    };
  }

  factory GetNodeFqdn.fromMap(Map<String, dynamic> map) {
    return GetNodeFqdn(
      addressFamily: (() { final guardedValue = map['addressFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autopopulate: pulumi.Input.fromValue(map['autopopulate'] as String),
      downinterval: pulumi.Input.fromValue(map['downinterval'] as int),
      interval: pulumi.Input.fromValue(map['interval'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

