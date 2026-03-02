// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_association.dart';
import 'firewall_policy_rule.dart';
import 'network_firewall_policy_vpc_network_scope.dart';

/// {@template pulumi_compute_alpha_network_firewall_policy_args_doc}
/// The set of arguments for NetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_network_firewall_policy_args_doc}
class NetworkFirewallPolicyArgs {
  /// A list of associations that belong to this firewall policy.
  final pulumi.Input<List<FirewallPolicyAssociation>>? associations;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Deprecated, please use short name instead. User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? displayName;
  /// Name of the resource. For Organization Firewall Policies it's a [Output Only] numeric ID allocated by Google Cloud which uniquely identifies the Organization Firewall Policy.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  final pulumi.Input<List<FirewallPolicyRule>>? rules;
  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? shortName;
  /// The scope of networks allowed to be associated with the firewall policy. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A firewall policy with the VPC scope set to GLOBAL_VPC_NETWORK is allowed to be attached only to global networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the firewall policy is allowed to be attached only to regional networks in the same scope as the firewall policy. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
  final pulumi.Input<NetworkFirewallPolicyVpcNetworkScope>? vpcNetworkScope;

  /// Creates a new [NetworkFirewallPolicyArgs].
  /// [associations] A list of associations that belong to this firewall policy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [displayName] Deprecated, please use short name instead. User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [name] Name of the resource. For Organization Firewall Policies it's a [Output Only] numeric ID allocated by Google Cloud which uniquely identifies the Organization Firewall Policy.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rules] A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  /// [shortName] User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [vpcNetworkScope] The scope of networks allowed to be associated with the firewall policy. This field can be either GLOBAL_VPC_NETWORK or REGIONAL_VPC_NETWORK. A firewall policy with the VPC scope set to GLOBAL_VPC_NETWORK is allowed to be attached only to global networks. When the VPC scope is set to REGIONAL_VPC_NETWORK the firewall policy is allowed to be attached only to regional networks in the same scope as the firewall policy. Note: if not specified then GLOBAL_VPC_NETWORK will be used.
  NetworkFirewallPolicyArgs({
    this.associations,
    this.description,
    this.displayName,
    this.name,
    this.project,
    this.requestId,
    this.rules,
    this.shortName,
    this.vpcNetworkScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<FirewallPolicyAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shortName': ?shortName,
      'vpcNetworkScope': ?pulumi.Input.mapOptionalInputValue<NetworkFirewallPolicyVpcNetworkScope, String>(vpcNetworkScope, (value) => value.value),
    };
  }

  factory NetworkFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyArgs(
      associations: map['associations'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyAssociation>(map['associations'], (value) => FirewallPolicyAssociation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyRule>(map['rules'], (value) => FirewallPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shortName: map['shortName'] == null ? null : (map['shortName'] as String).input(),
      vpcNetworkScope: map['vpcNetworkScope'] == null ? null : (NetworkFirewallPolicyVpcNetworkScope.fromValue(map['vpcNetworkScope'] as String)).input(),
    );
  }
}

