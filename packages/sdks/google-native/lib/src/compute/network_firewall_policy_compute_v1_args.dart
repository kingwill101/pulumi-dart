// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_association_compute_v1.dart';
import 'firewall_policy_rule_compute_v1.dart';

/// {@template pulumi_compute_v1_network_firewall_policy_compute_v1_args_doc}
/// The set of arguments for NetworkFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_firewall_policy_compute_v1_args_doc}
class NetworkFirewallPolicyComputeV1Args {
  /// A list of associations that belong to this firewall policy.
  final pulumi.Input<List<FirewallPolicyAssociationComputeV1>>? associations;
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
  final pulumi.Input<List<FirewallPolicyRuleComputeV1>>? rules;
  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? shortName;

  /// Creates a new [NetworkFirewallPolicyComputeV1Args].
  /// [associations] A list of associations that belong to this firewall policy.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [displayName] Deprecated, please use short name instead. User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [name] Name of the resource. For Organization Firewall Policies it's a [Output Only] numeric ID allocated by Google Cloud which uniquely identifies the Organization Firewall Policy.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rules] A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  /// [shortName] User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  NetworkFirewallPolicyComputeV1Args({
    pulumi.Output<List<FirewallPolicyAssociationComputeV1>>? associations,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<FirewallPolicyRuleComputeV1>>? rules,
    pulumi.Output<String>? shortName,
  }) :
      associations = pulumi.Input.asOptionalInput<List<FirewallPolicyAssociationComputeV1>>(associations),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      rules = pulumi.Input.asOptionalInput<List<FirewallPolicyRuleComputeV1>>(rules),
      shortName = pulumi.Input.asOptionalInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyAssociationComputeV1>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<FirewallPolicyAssociationComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyRuleComputeV1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyRuleComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shortName': ?shortName,
    };
  }

  factory NetworkFirewallPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyComputeV1Args(
      associations: map['associations'] == null ? null : pulumi.Output.create<List<FirewallPolicyAssociationComputeV1>>(pulumi.Input.decodeList<FirewallPolicyAssociationComputeV1>(map['associations'], (value) => FirewallPolicyAssociationComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<FirewallPolicyRuleComputeV1>>(pulumi.Input.decodeList<FirewallPolicyRuleComputeV1>(map['rules'], (value) => FirewallPolicyRuleComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

