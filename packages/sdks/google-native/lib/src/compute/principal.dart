// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] All fields defined in a principal are ANDed.
class Principal {
  /// An expression to specify custom condition.
  final pulumi.Input<String>? condition;
  /// The groups the principal belongs to. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>>? groups;
  /// IPv4 or IPv6 address or range (In CIDR format)
  final pulumi.Input<List<String>>? ips;
  /// The namespaces. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>>? namespaces;
  /// Negate of groups. Specifies exclusions.
  final pulumi.Input<List<String>>? notGroups;
  /// Negate of IPs. Specifies exclusions.
  final pulumi.Input<List<String>>? notIps;
  /// Negate of namespaces. Specifies exclusions.
  final pulumi.Input<List<String>>? notNamespaces;
  /// Negate of users. Specifies exclusions.
  final pulumi.Input<List<String>>? notUsers;
  /// A map of Istio attribute to expected values. Exact match, prefix match, and suffix match are supported for values. For example, `request.headers[version]: "v1"`. The properties are ANDed together.
  final pulumi.Input<Map<String, String>>? properties;
  /// The user names/IDs or service accounts. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [Principal].
  /// [condition] An expression to specify custom condition.
  /// [groups] The groups the principal belongs to. Exact match, prefix match, and suffix match are supported.
  /// [ips] IPv4 or IPv6 address or range (In CIDR format)
  /// [namespaces] The namespaces. Exact match, prefix match, and suffix match are supported.
  /// [notGroups] Negate of groups. Specifies exclusions.
  /// [notIps] Negate of IPs. Specifies exclusions.
  /// [notNamespaces] Negate of namespaces. Specifies exclusions.
  /// [notUsers] Negate of users. Specifies exclusions.
  /// [properties] A map of Istio attribute to expected values. Exact match, prefix match, and suffix match are supported for values. For example, `request.headers[version]: "v1"`. The properties are ANDed together.
  /// [users] The user names/IDs or service accounts. Exact match, prefix match, and suffix match are supported.
  const Principal({
    this.condition,
    this.groups,
    this.ips,
    this.namespaces,
    this.notGroups,
    this.notIps,
    this.notNamespaces,
    this.notUsers,
    this.properties,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'groups': ?groups,
      'ips': ?ips,
      'namespaces': ?namespaces,
      'notGroups': ?notGroups,
      'notIps': ?notIps,
      'notNamespaces': ?notNamespaces,
      'notUsers': ?notUsers,
      'properties': ?properties,
      'users': ?users,
    };
  }

  factory Principal.fromMap(Map<String, dynamic> map) {
    return Principal(
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notGroups: (() { final guardedValue = map['notGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notIps: (() { final guardedValue = map['notIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notNamespaces: (() { final guardedValue = map['notNamespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notUsers: (() { final guardedValue = map['notUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
