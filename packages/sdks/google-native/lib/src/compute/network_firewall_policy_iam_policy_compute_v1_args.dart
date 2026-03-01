// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_config_compute_v1.dart';
import 'binding_compute_v1.dart';
import 'rule_compute_v1.dart';

/// {@template pulumi_compute_v1_network_firewall_policy_iam_policy_compute_v1_args_doc}
/// The set of arguments for NetworkFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_network_firewall_policy_iam_policy_compute_v1_args_doc}
class NetworkFirewallPolicyIamPolicyComputeV1Args {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<AuditConfigComputeV1>>? auditConfigs;
  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<BindingComputeV1>>? bindings;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<List<RuleComputeV1>>? rules;
  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [NetworkFirewallPolicyIamPolicyComputeV1Args].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [bindings] Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  /// [project] Optional.
  /// [resource] Required.
  /// [rules] This is deprecated and has no effect. Do not use.
  /// [version] Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  NetworkFirewallPolicyIamPolicyComputeV1Args({
    pulumi.Output<List<AuditConfigComputeV1>>? auditConfigs,
    pulumi.Output<List<BindingComputeV1>>? bindings,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resource,
    pulumi.Output<List<RuleComputeV1>>? rules,
    pulumi.Output<int>? version,
  }) :
      auditConfigs = pulumi.Input.asOptionalInput<List<AuditConfigComputeV1>>(auditConfigs),
      bindings = pulumi.Input.asOptionalInput<List<BindingComputeV1>>(bindings),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      project = pulumi.Input.asOptionalInput<String>(project),
      resource = pulumi.Input.asInput<String>(resource),
      rules = pulumi.Input.asOptionalInput<List<RuleComputeV1>>(rules),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs': ?pulumi.Input.mapOptionalInputValue<List<AuditConfigComputeV1>, List<Map<String, dynamic>>>(auditConfigs, (value) => pulumi.Input.encodeList<AuditConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingComputeV1>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'project': ?project,
      'resource': resource,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleComputeV1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory NetworkFirewallPolicyIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyIamPolicyComputeV1Args(
      auditConfigs: map['auditConfigs'] == null ? null : pulumi.Output.create<List<AuditConfigComputeV1>>(pulumi.Input.decodeList<AuditConfigComputeV1>(map['auditConfigs'], (value) => AuditConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      bindings: map['bindings'] == null ? null : pulumi.Output.create<List<BindingComputeV1>>(pulumi.Input.decodeList<BindingComputeV1>(map['bindings'], (value) => BindingComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resource: pulumi.Output.create<String>(map['resource'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RuleComputeV1>>(pulumi.Input.decodeList<RuleComputeV1>(map['rules'], (value) => RuleComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

