// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Deprecated] All fields defined in a principal are ANDed.
class PrincipalResponse {
  /// An expression to specify custom condition.
  final pulumi.Input<String> condition;
  /// The groups the principal belongs to. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>> groups;
  /// IPv4 or IPv6 address or range (In CIDR format)
  final pulumi.Input<List<String>> ips;
  /// The namespaces. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>> namespaces;
  /// Negate of groups. Specifies exclusions.
  final pulumi.Input<List<String>> notGroups;
  /// Negate of IPs. Specifies exclusions.
  final pulumi.Input<List<String>> notIps;
  /// Negate of namespaces. Specifies exclusions.
  final pulumi.Input<List<String>> notNamespaces;
  /// Negate of users. Specifies exclusions.
  final pulumi.Input<List<String>> notUsers;
  /// A map of Istio attribute to expected values. Exact match, prefix match, and suffix match are supported for values. For example, `request.headers[version]: "v1"`. The properties are ANDed together.
  final pulumi.Input<Map<String, String>> properties;
  /// The user names/IDs or service accounts. Exact match, prefix match, and suffix match are supported.
  final pulumi.Input<List<String>> users;

  /// Creates a new [PrincipalResponse].
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
  const PrincipalResponse({
    required this.condition,
    required this.groups,
    required this.ips,
    required this.namespaces,
    required this.notGroups,
    required this.notIps,
    required this.notNamespaces,
    required this.notUsers,
    required this.properties,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'groups': groups,
      'ips': ips,
      'namespaces': namespaces,
      'notGroups': notGroups,
      'notIps': notIps,
      'notNamespaces': notNamespaces,
      'notUsers': notUsers,
      'properties': properties,
      'users': users,
    };
  }

  factory PrincipalResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      groups: pulumi.Input.fromValue((map['groups'] as List).cast<String>()),
      ips: pulumi.Input.fromValue((map['ips'] as List).cast<String>()),
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
      notGroups: pulumi.Input.fromValue((map['notGroups'] as List).cast<String>()),
      notIps: pulumi.Input.fromValue((map['notIps'] as List).cast<String>()),
      notNamespaces: pulumi.Input.fromValue((map['notNamespaces'] as List).cast<String>()),
      notUsers: pulumi.Input.fromValue((map['notUsers'] as List).cast<String>()),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      users: pulumi.Input.fromValue((map['users'] as List).cast<String>()),
    );
  }
}
