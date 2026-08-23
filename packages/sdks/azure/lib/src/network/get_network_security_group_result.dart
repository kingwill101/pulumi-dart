// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_security_group_security_rule.dart';

/// Result data returned by getNetworkSecurityGroup.
class GetNetworkSecurityGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The supported Azure location where the resource exists.
  final String location;
  /// The name of the security rule.
  final String name;
  final String resourceGroupName;
  /// One or more `securityRule` blocks as defined below.
  final List<GetNetworkSecurityGroupSecurityRule> securityRules;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkSecurityGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of the security rule.
  /// [resourceGroupName] Required.
  /// [securityRules] One or more `securityRule` blocks as defined below.
  /// [tags] A mapping of tags assigned to the resource.
  const GetNetworkSecurityGroupResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.securityRules,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'securityRules': pulumi.Input.encodeList<GetNetworkSecurityGroupSecurityRule, Map<String, dynamic>>(securityRules, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetNetworkSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      securityRules: pulumi.Input.decodeList<GetNetworkSecurityGroupSecurityRule>(map['securityRules']!, (value) => GetNetworkSecurityGroupSecurityRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
