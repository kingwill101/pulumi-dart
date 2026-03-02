// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_config_gameservices_v1beta.dart';
import 'binding_gameservices_v1beta.dart';
import 'rule_gameservices_v1beta.dart';

/// {@template pulumi_gameservices_v1beta_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
/// The set of arguments for GameServerDeploymentIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gameservices_v1beta_game_server_deployment_iam_policy_gameservices_v1beta_args_doc}
class GameServerDeploymentIamPolicyGameservicesV1betaArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<AuditConfigGameservicesV1beta>>? auditConfigs;
  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<BindingGameservicesV1beta>>? bindings;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> gameServerDeploymentId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// If more than one rule is specified, the rules are applied in the following manner: - All matching LOG rules are always applied. - If any DENY/DENY_WITH_LOG rule matches, permission is denied. Logging will be applied if one or more matching rule requires logging. - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is granted. Logging will be applied if one or more matching rule requires logging. - Otherwise, if no rule applies, permission is denied.
  final pulumi.Input<List<RuleGameservicesV1beta>>? rules;
  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  final pulumi.Input<String>? updateMask;
  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [GameServerDeploymentIamPolicyGameservicesV1betaArgs].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [bindings] Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  /// [gameServerDeploymentId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [rules] If more than one rule is specified, the rules are applied in the following manner: - All matching LOG rules are always applied. - If any DENY/DENY_WITH_LOG rule matches, permission is denied. Logging will be applied if one or more matching rule requires logging. - Otherwise, if any ALLOW/ALLOW_WITH_LOG rule matches, permission is granted. Logging will be applied if one or more matching rule requires logging. - Otherwise, if no rule applies, permission is denied.
  /// [updateMask] OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  /// [version] Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GameServerDeploymentIamPolicyGameservicesV1betaArgs({
    this.auditConfigs,
    this.bindings,
    this.etag,
    required this.gameServerDeploymentId,
    this.location,
    this.project,
    this.rules,
    this.updateMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs': ?pulumi.Input.mapOptionalInputValue<List<AuditConfigGameservicesV1beta>, List<Map<String, dynamic>>>(auditConfigs, (value) => pulumi.Input.encodeList<AuditConfigGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingGameservicesV1beta>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'gameServerDeploymentId': gameServerDeploymentId,
      'location': ?location,
      'project': ?project,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleGameservicesV1beta>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateMask': ?updateMask,
      'version': ?version,
    };
  }

  factory GameServerDeploymentIamPolicyGameservicesV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GameServerDeploymentIamPolicyGameservicesV1betaArgs(
      auditConfigs: map['auditConfigs'] == null ? null : (pulumi.Input.decodeList<AuditConfigGameservicesV1beta>(map['auditConfigs']!, (value) => AuditConfigGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bindings: map['bindings'] == null ? null : (pulumi.Input.decodeList<BindingGameservicesV1beta>(map['bindings']!, (value) => BindingGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      gameServerDeploymentId: (map['gameServerDeploymentId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<RuleGameservicesV1beta>(map['rules']!, (value) => RuleGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateMask: map['updateMask'] == null ? null : (map['updateMask']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
    );
  }
}

