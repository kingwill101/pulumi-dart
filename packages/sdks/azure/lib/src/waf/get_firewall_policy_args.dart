// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_waf_get_firewall_policy_get_firewall_policy_args_doc}
/// Arguments for getFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_waf_get_firewall_policy_get_firewall_policy_args_doc}
class GetFirewallPolicyArgs {
  /// The name of the Web Application Firewall Policy
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Web Application Firewall Policy exists.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetFirewallPolicyArgs].
  /// [name] The name of the Web Application Firewall Policy
  /// [resourceGroupName] The name of the Resource Group where the Web Application Firewall Policy exists.
  /// [tags] Optional.
  GetFirewallPolicyArgs({
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

