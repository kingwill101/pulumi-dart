// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding.dart';

/// {@template pulumi_dataproc_v1_region_autoscaling_policy_iam_policy_args_doc}
/// The set of arguments for RegionAutoscalingPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_region_autoscaling_policy_iam_policy_args_doc}
class RegionAutoscalingPolicyIamPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  /// Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
  final pulumi.Input<List<Binding>>? bindings;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  /// Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [RegionAutoscalingPolicyIamPolicyArgs].
  /// [autoscalingPolicyId] Required.
  /// [bindings] Associates a list of members, or principals, with a role. Optionally, may specify a condition that determines how and when the bindings are applied. Each of the bindings must contain at least one principal.The bindings in a Policy can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the bindings grant 50 different roles to user:alice@example.com, and not to any other principal, then you can add another 1,450 principals to the bindings in the Policy.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An etag is returned in the response to getIamPolicy, and systems are expected to put that etag in the request to setIamPolicy to ensure that their change will be applied to the same version of the policy.Important: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.
  /// [project] Optional.
  /// [regionId] Required.
  /// [version] Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid value are rejected.Any operation that affects conditional role bindings must specify version 3. This requirement applies to the following operations: Getting a policy that includes a conditional role binding Adding a conditional role binding to a policy Changing a conditional role binding in a policy Removing any role binding, with or without a condition, from a policy that includes conditionsImportant: If you use IAM Conditions, you must include the etag field whenever you call setIamPolicy. If you omit this field, then IAM allows you to overwrite a version 3 policy with a version 1 policy, and all of the conditions in the version 3 policy are lost.If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).
  RegionAutoscalingPolicyIamPolicyArgs({
    required pulumi.Output<String> autoscalingPolicyId,
    pulumi.Output<List<Binding>>? bindings,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
    pulumi.Output<int>? version,
  }) :
      autoscalingPolicyId = pulumi.Input.asInput<String>(autoscalingPolicyId),
      bindings = pulumi.Input.asOptionalInput<List<Binding>>(bindings),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<Binding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<Binding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'project': ?project,
      'regionId': regionId,
      'version': ?version,
    };
  }

  factory RegionAutoscalingPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalingPolicyIamPolicyArgs(
      autoscalingPolicyId: pulumi.Output.create<String>(map['autoscalingPolicyId'] as String),
      bindings: map['bindings'] == null ? null : pulumi.Output.create<List<Binding>>(pulumi.Input.decodeList<Binding>(map['bindings'], (value) => Binding.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

