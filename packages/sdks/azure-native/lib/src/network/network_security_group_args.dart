// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_rule_network.dart';

/// {@template pulumi_network_network_security_group_args_doc}
/// The set of arguments for NetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_group_args_doc}
class NetworkSecurityGroupArgs {
  /// When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  final pulumi.Input<bool>? flushConnection;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the network security group.
  final pulumi.Input<String>? networkSecurityGroupName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// A collection of security rules of the network security group.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<SecurityRuleNetwork>>? securityRules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityGroupArgs].
  /// [flushConnection] When enabled, flows created from Network Security Group connections will be re-evaluated when rules are updates. Initial enablement will trigger re-evaluation.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [networkSecurityGroupName] The name of the network security group.
  /// [resourceGroupName] The name of the resource group.
  /// [securityRules] A collection of security rules of the network security group.
  /// [tags] Resource tags.
  NetworkSecurityGroupArgs({
    this.flushConnection,
    this.id,
    this.location,
    this.networkSecurityGroupName,
    required this.resourceGroupName,
    this.securityRules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flushConnection': ?flushConnection,
      'id': ?id,
      'location': ?location,
      'networkSecurityGroupName': ?networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
      'securityRules': ?securityRules,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityGroupArgs(
      flushConnection: map['flushConnection'] == null ? null : (map['flushConnection'] as bool).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkSecurityGroupName: map['networkSecurityGroupName'] == null ? null : (map['networkSecurityGroupName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityRules: map['securityRules'] == null ? null : ((map['securityRules'] as List).cast<SecurityRuleNetwork>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

