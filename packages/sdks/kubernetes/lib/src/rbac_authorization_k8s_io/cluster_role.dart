// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'aggregation_rule.dart';
import 'policy_rule.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class ClusterRole {
  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final pulumi.Input<AggregationRule>? aggregationRule;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;

  /// Standard object's metadata.
  final pulumi.Input<ObjectMeta>? metadata;

  /// Rules holds all the PolicyRules for this ClusterRole
  final pulumi.Input<List<PolicyRule>>? rules;

  /// Creates a new [ClusterRole].
  /// [aggregationRule] AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata.
  /// [rules] Rules holds all the PolicyRules for this ClusterRole
  ClusterRole({
    this.aggregationRule,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationRule':
          ?pulumi.Input.mapOptionalInputValue<
            AggregationRule,
            Map<String, dynamic>
          >(aggregationRule, (value) => value.toMap()),
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<PolicyRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<PolicyRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ClusterRole.fromMap(Map<String, dynamic> map) {
    return ClusterRole(
      aggregationRule: (() {
        final guardedValue = map['aggregationRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AggregationRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      apiVersion: (() {
        final guardedValue = map['apiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PolicyRule>(
            guardedValue,
            (value) =>
                PolicyRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
