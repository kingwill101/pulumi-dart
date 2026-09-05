// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'policy_rule_patch_rbac_authorization_k8s_io_v1beta1.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1beta1_role_patch_rbac_authorization_k8s_io_v1beta1_args_doc}
/// The set of arguments for RolePatch.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1beta1_role_patch_rbac_authorization_k8s_io_v1beta1_args_doc}
class RolePatchRbacAuthorizationK8sIoV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// Rules holds all the PolicyRules for this Role
  final pulumi.Input<List<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>?>? rules;

  /// Creates a new [RolePatchRbacAuthorizationK8sIoV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [rules] Rules holds all the PolicyRules for this Role
  const RolePatchRbacAuthorizationK8sIoV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRulePatchRbacAuthorizationK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RolePatchRbacAuthorizationK8sIoV1beta1Args.fromMap(Map<String, dynamic> map) {
    return RolePatchRbacAuthorizationK8sIoV1beta1Args(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRulePatchRbacAuthorizationK8sIoV1beta1>(guardedValue, (value) => PolicyRulePatchRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
