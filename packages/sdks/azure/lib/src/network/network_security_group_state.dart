// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_security_rule.dart';

/// Input properties used for looking up and filtering NetworkSecurityGroup resources.
class NetworkSecurityGroupState {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the security rule.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the network security group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A list of objects representing security rules, as defined below.
  ///
  /// &gt; **NOTE** Since `securityRule` can be configured both inline and via the separate `azure.network.NetworkSecurityRule` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<NetworkSecurityGroupSecurityRule>>? securityRules;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityGroupState].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the security rule.
  /// [resourceGroupName] The name of the resource group in which to create the network security group. Changing this forces a new resource to be created.
  /// [securityRules] A list of objects representing security rules, as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const NetworkSecurityGroupState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.securityRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkSecurityGroupSecurityRule>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<NetworkSecurityGroupSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NetworkSecurityGroupState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupState(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityRules: (() { final guardedValue = map['securityRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkSecurityGroupSecurityRule>(guardedValue, (value) => NetworkSecurityGroupSecurityRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
