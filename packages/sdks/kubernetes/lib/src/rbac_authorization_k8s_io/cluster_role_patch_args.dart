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
  /// aggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final pulumi.Input<AggregationRulePatch?>? aggregationRule;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String?>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String?>? kind;
  /// metadata is the standard object's metadata.
  final pulumi.Input<ObjectMetaPatch?>? metadata;
  /// rules holds all the PolicyRules for this ClusterRole
  final pulumi.Input<List<PolicyRulePatch>?>? rules;

  /// Creates a new [ClusterRolePatchArgs].
  /// [aggregationRule] aggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] metadata is the standard object's metadata.
  /// [rules] rules holds all the PolicyRules for this ClusterRole
  const ClusterRolePatchArgs({
    this.aggregationRule,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

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
      aggregationRule: (() { final guardedValue = map['aggregationRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AggregationRulePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObjectMetaPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRulePatch>(guardedValue, (value) => PolicyRulePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
