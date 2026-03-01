// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'aggregation_rule_patch.dart';
import 'policy_rule_patch.dart';

/// {@template pulumi_rbac_authorization_k8s_io_v1_cluster_role_patch_args_doc}
/// The set of arguments for ClusterRolePatch.
/// {@endtemplate}
/// {@macro pulumi_rbac_authorization_k8s_io_v1_cluster_role_patch_args_doc}
class ClusterRolePatchArgs {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final pulumi.Input<AggregationRulePatch>? aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata.
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Rules holds all the PolicyRules for this ClusterRole
  final pulumi.Input<List<PolicyRulePatch>>? rules;

  /// Creates a new [ClusterRolePatchArgs].
  /// [aggregationRule] AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [rules] Rules holds all the PolicyRules for this ClusterRole
  ClusterRolePatchArgs({
    pulumi.Output<AggregationRulePatch>? aggregationRule,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMetaPatch>? metadata,
    pulumi.Output<List<PolicyRulePatch>>? rules,
  }) :
      aggregationRule = pulumi.Input.asOptionalInput<AggregationRulePatch>(aggregationRule),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      rules = pulumi.Input.asOptionalInput<List<PolicyRulePatch>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationRule': ?pulumi.Input.mapOptionalInputValue<AggregationRulePatch, Map<String, dynamic>>(aggregationRule, (value) => value.toMap()),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRulePatch>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRulePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterRolePatchArgs.fromMap(Map<String, dynamic> map) {
    return ClusterRolePatchArgs(
      aggregationRule: map['aggregationRule'] == null ? null : pulumi.Output.create<AggregationRulePatch>(AggregationRulePatch.fromMap((map['aggregationRule'] as Map).cast<String, dynamic>())),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMetaPatch>(ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<PolicyRulePatch>>(pulumi.Input.decodeList<PolicyRulePatch>(map['rules'], (value) => PolicyRulePatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

