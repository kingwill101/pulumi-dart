// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';

/// {@template pulumi_scheduling_k8s_io_v1alpha1_priority_class_scheduling_k8s_io_v1alpha1_args_doc}
/// The set of arguments for PriorityClass.
/// {@endtemplate}
/// {@macro pulumi_scheduling_k8s_io_v1alpha1_priority_class_scheduling_k8s_io_v1alpha1_args_doc}
class PriorityClassSchedulingK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  final pulumi.Input<String>? description;
  /// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  final pulumi.Input<bool>? globalDefault;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta>? metadata;
  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
  final pulumi.Input<String>? preemptionPolicy;
  /// The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  final pulumi.Input<int> value;

  /// Creates a new [PriorityClassSchedulingK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [description] description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  /// [globalDefault] globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [preemptionPolicy] PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
  /// [value] The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  PriorityClassSchedulingK8sIoV1alpha1Args({
    pulumi.Output<String>? apiVersion,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? globalDefault,
    pulumi.Output<String>? kind,
    pulumi.Output<ObjectMeta>? metadata,
    pulumi.Output<String>? preemptionPolicy,
    required pulumi.Output<int> value,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      globalDefault = pulumi.Input.asOptionalInput<bool>(globalDefault),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMeta>(metadata),
      preemptionPolicy = pulumi.Input.asOptionalInput<String>(preemptionPolicy),
      value = pulumi.Input.asInput<int>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'description': ?description,
      'globalDefault': ?globalDefault,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'preemptionPolicy': ?preemptionPolicy,
      'value': value,
    };
  }

  factory PriorityClassSchedulingK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return PriorityClassSchedulingK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      globalDefault: map['globalDefault'] == null ? null : pulumi.Output.create<bool>(map['globalDefault'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ObjectMeta>(ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      preemptionPolicy: map['preemptionPolicy'] == null ? null : pulumi.Output.create<String>(map['preemptionPolicy'] as String),
      value: pulumi.Output.create<int>(map['value'] as int),
    );
  }
}

