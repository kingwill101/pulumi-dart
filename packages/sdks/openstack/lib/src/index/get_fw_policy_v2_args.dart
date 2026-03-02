// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_fw_policy_v2_get_fw_policy_v2_args_doc}
/// Arguments for getFwPolicyV2.
/// {@endtemplate}
/// {@macro pulumi_index_get_fw_policy_v2_get_fw_policy_v2_args_doc}
class GetFwPolicyV2Args {
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

  /// Creates a new [GetFwPolicyV2Args].
  /// [audited] Whether this policy has been audited.
  /// [description] Human-readable description of the policy.
  /// [name] The name of the firewall policy.
  /// [policyId] The ID of the firewall policy.
  /// [projectId] This argument conflicts and is interchangeable
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [shared] Whether this policy is shared across all projects.
  /// [tenantId] This argument conflicts and is interchangeable
  GetFwPolicyV2Args({
    this.audited,
    this.description,
    this.name,
    this.policyId,
    this.projectId,
    this.region,
    this.shared,
    this.tenantId,
  });

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

  factory GetFwPolicyV2Args.fromMap(Map<String, dynamic> map) {
    return GetFwPolicyV2Args(
      audited: map['audited'] == null ? null : (map['audited']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      shared: map['shared'] == null ? null : (map['shared']! as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

