// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_security_group_security_rule.dart';

/// Result data returned by getNetworkSecurityGroup.
class GetNetworkSecurityGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The supported Azure location where the resource exists.
  final String? location;
  /// The name of the security rule.
  final String? name;
  final String? resourceGroupName;
  /// One or more `securityRule` blocks as defined below.
  final List<GetNetworkSecurityGroupSecurityRule>? securityRules;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkSecurityGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of the security rule.
  /// [resourceGroupName] Optional.
  /// [securityRules] One or more `securityRule` blocks as defined below.
  /// [tags] A mapping of tags assigned to the resource.
  const GetNetworkSecurityGroupResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.securityRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'securityRules': ?(() { final guardedValue = securityRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkSecurityGroupSecurityRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetNetworkSecurityGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkSecurityGroupSecurityRule>(guardedValue, (value) => GetNetworkSecurityGroupSecurityRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
