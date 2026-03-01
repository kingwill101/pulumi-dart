// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_group_security_rule.dart';

/// {@template pulumi_network_network_security_group_network_security_group_args_doc}
/// The set of arguments for NetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_group_network_security_group_args_doc}
class NetworkSecurityGroupArgs {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the security rule.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the network security group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A list of objects representing security rules, as defined below.
  ///
  /// > **NOTE** Since `security_rule` can be configured both inline and via the separate `azure.network.NetworkSecurityRule` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  final pulumi.Input<List<NetworkSecurityGroupSecurityRule>>? securityRules;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityGroupArgs].
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the security rule.
  /// [resourceGroupName] The name of the resource group in which to create the network security group. Changing this forces a new resource to be created.
  /// [securityRules] A list of objects representing security rules, as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  NetworkSecurityGroupArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<NetworkSecurityGroupSecurityRule>>? securityRules,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityRules = pulumi.Input.asOptionalInput<List<NetworkSecurityGroupSecurityRule>>(securityRules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'securityRules': ?pulumi.Input.mapOptionalInputValue<List<NetworkSecurityGroupSecurityRule>, List<Map<String, dynamic>>>(securityRules, (value) => pulumi.Input.encodeList<NetworkSecurityGroupSecurityRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory NetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityRules: map['securityRules'] == null ? null : pulumi.Output.create<List<NetworkSecurityGroupSecurityRule>>(pulumi.Input.decodeList<NetworkSecurityGroupSecurityRule>(map['securityRules'], (value) => NetworkSecurityGroupSecurityRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

