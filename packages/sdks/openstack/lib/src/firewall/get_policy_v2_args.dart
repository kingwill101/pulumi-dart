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

  factory GetPolicyV2Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyV2Args(
      audited: (() { final guardedValue = map['audited']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shared: (() { final guardedValue = map['shared']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

