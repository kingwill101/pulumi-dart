// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firewall_get_policy_v2_get_policy_v2_args_doc}
/// Arguments for getPolicyV2.
/// {@endtemplate}
/// {@macro pulumi_firewall_get_policy_v2_get_policy_v2_args_doc}
class GetPolicyV2Args {
  /// Whether this policy has been audited.
  final pulumi.Input<bool>? audited;
  /// Human-readable description of the policy.
  final pulumi.Input<String>? description;
  /// The name of the firewall policy.
  final pulumi.Input<String>? name;
  /// The ID of the firewall policy.
  final pulumi.Input<String>? policyId;
  /// This argument conflicts and is interchangeable
  /// with `tenant_id`. The owner of the firewall policy.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve firewall policy ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// Whether this policy is shared across all projects.
  final pulumi.Input<bool>? shared;
  /// This argument conflicts and is interchangeable
  /// with `project_id`. The owner of the firewall policy.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetPolicyV2Args].
  /// [audited] Whether this policy has been audited.
  /// [description] Human-readable description of the policy.
  /// [name] The name of the firewall policy.
  /// [policyId] The ID of the firewall policy.
  /// [projectId] This argument conflicts and is interchangeable
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [shared] Whether this policy is shared across all projects.
  /// [tenantId] This argument conflicts and is interchangeable
  GetPolicyV2Args({
    pulumi.Output<bool>? audited,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? shared,
    pulumi.Output<String>? tenantId,
  }) :
      audited = pulumi.Input.asOptionalInput<bool>(audited),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audited': ?audited,
      'description': ?description,
      'name': ?name,
      'policyId': ?policyId,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tenantId': ?tenantId,
    };
  }

  factory GetPolicyV2Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyV2Args(
      audited: map['audited'] == null ? null : pulumi.Output.create<bool>(map['audited'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shared: map['shared'] == null ? null : pulumi.Output.create<bool>(map['shared'] as bool),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

