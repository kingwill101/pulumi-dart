// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_iam_v1_audit_config.dart';
import 'google_iam_v1_binding.dart';

/// {@template pulumi_beyondcorp_v1_organization_partner_tenant_proxy_config_iam_policy_args_doc}
/// The set of arguments for OrganizationPartnerTenantProxyConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_organization_partner_tenant_proxy_config_iam_policy_args_doc}
class OrganizationPartnerTenantProxyConfigIamPolicyArgs {
  /// Specifies cloud audit logging configuration for this policy.
  final pulumi.Input<List<GoogleIamV1AuditConfig>>? auditConfigs;
  /// Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  final pulumi.Input<List<GoogleIamV1Binding>>? bindings;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> partnerTenantId;
  final pulumi.Input<String> proxyConfigId;
  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  final pulumi.Input<String>? updateMask;
  /// Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  final pulumi.Input<int>? version;

  /// Creates a new [OrganizationPartnerTenantProxyConfigIamPolicyArgs].
  /// [auditConfigs] Specifies cloud audit logging configuration for this policy.
  /// [bindings] Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.
  /// [organizationId] Required.
  /// [partnerTenantId] Required.
  /// [proxyConfigId] Required.
  /// [updateMask] OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: "bindings, etag"`
  /// [version] Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  const OrganizationPartnerTenantProxyConfigIamPolicyArgs({
    this.auditConfigs,
    this.bindings,
    this.etag,
    required this.organizationId,
    required this.partnerTenantId,
    required this.proxyConfigId,
    this.updateMask,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleIamV1AuditConfig>, List<Map<String, dynamic>>>(auditConfigs, (value) => pulumi.Input.encodeList<GoogleIamV1AuditConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<GoogleIamV1Binding>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<GoogleIamV1Binding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'organizationId': organizationId,
      'partnerTenantId': partnerTenantId,
      'proxyConfigId': proxyConfigId,
      'updateMask': ?updateMask,
      'version': ?version,
    };
  }

  factory OrganizationPartnerTenantProxyConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPartnerTenantProxyConfigIamPolicyArgs(
      auditConfigs: (() { final guardedValue = map['auditConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleIamV1AuditConfig>(guardedValue, (value) => GoogleIamV1AuditConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleIamV1Binding>(guardedValue, (value) => GoogleIamV1Binding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      partnerTenantId: pulumi.Input.fromValue(map['partnerTenantId'] as String),
      proxyConfigId: pulumi.Input.fromValue(map['proxyConfigId'] as String),
      updateMask: (() { final guardedValue = map['updateMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
