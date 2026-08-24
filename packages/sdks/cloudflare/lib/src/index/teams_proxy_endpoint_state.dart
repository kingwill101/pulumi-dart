// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TeamsProxyEndpoint resources.
class TeamsProxyEndpointState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  /// Specify the list of CIDRs to restrict ingress connections.
  final pulumi.Input<List<String>?>? ips;
  /// The proxy endpoint kind
  /// Available values: "ip", "identity".
  final pulumi.Input<String?>? kind;
  /// Specify the name of the proxy endpoint.
  final pulumi.Input<String?>? name;
  /// Specify the subdomain to use as the destination in the proxy client.
  final pulumi.Input<String?>? subdomain;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [TeamsProxyEndpointState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [ips] Specify the list of CIDRs to restrict ingress connections.
  /// [kind] The proxy endpoint kind
  /// [name] Specify the name of the proxy endpoint.
  /// [subdomain] Specify the subdomain to use as the destination in the proxy client.
  /// [updatedAt] Optional.
  const TeamsProxyEndpointState({
    this.accountId,
    this.createdAt,
    this.ips,
    this.kind,
    this.name,
    this.subdomain,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'ips': ?ips,
      'kind': ?kind,
      'name': ?name,
      'subdomain': ?subdomain,
      'updatedAt': ?updatedAt,
    };
  }

  factory TeamsProxyEndpointState.fromMap(Map<String, dynamic> map) {
    return TeamsProxyEndpointState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
