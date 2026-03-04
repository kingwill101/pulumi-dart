// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_disruption_budget_spec_policy_v1beta1.dart';

/// {@template pulumi_policy_v1beta1_pod_disruption_budget_policy_v1beta1_args_doc}
/// The set of arguments for PodDisruptionBudget.
/// {@endtemplate}
/// {@macro pulumi_policy_v1beta1_pod_disruption_budget_policy_v1beta1_args_doc}
class PodDisruptionBudgetPolicyV1beta1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  final pulumi.Input<ObjectMeta>? metadata;

  /// Specification of the desired behavior of the PodDisruptionBudget.
  final pulumi.Input<PodDisruptionBudgetSpecPolicyV1beta1>? spec;

  /// Creates a new [PodDisruptionBudgetPolicyV1beta1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [spec] Specification of the desired behavior of the PodDisruptionBudget.
  PodDisruptionBudgetPolicyV1beta1Args({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(
            metadata,
            (value) => value.toMap(),
          ),
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            PodDisruptionBudgetSpecPolicyV1beta1,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory PodDisruptionBudgetPolicyV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return PodDisruptionBudgetPolicyV1beta1Args(
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
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PodDisruptionBudgetSpecPolicyV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
