// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'aggregation_rule_rbac_authorization_k8s_io_v1beta1.dart';
import 'policy_rule_rbac_authorization_k8s_io_v1beta1.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding. Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRole, and will no longer be served in v1.20.
class ClusterRoleRbacAuthorizationK8sIoV1beta1 {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final AggregationRuleRbacAuthorizationK8sIoV1beta1? aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object's metadata.
  final ObjectMeta? metadata;
  /// Rules holds all the PolicyRules for this ClusterRole
  final List<PolicyRuleRbacAuthorizationK8sIoV1beta1>? rules;

  /// Creates a new [ClusterRoleRbacAuthorizationK8sIoV1beta1].
  /// [aggregationRule] AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [rules] Rules holds all the PolicyRules for this ClusterRole
  ClusterRoleRbacAuthorizationK8sIoV1beta1({
    this.aggregationRule,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationRule': ?aggregationRule == null ? null : aggregationRule!.toMap(),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<PolicyRuleRbacAuthorizationK8sIoV1beta1, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory ClusterRoleRbacAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterRoleRbacAuthorizationK8sIoV1beta1(
      aggregationRule: map['aggregationRule'] == null ? null : AggregationRuleRbacAuthorizationK8sIoV1beta1.fromMap((map['aggregationRule'] as Map).cast<String, dynamic>()),
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<PolicyRuleRbacAuthorizationK8sIoV1beta1>(map['rules'], (value) => PolicyRuleRbacAuthorizationK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

