// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';

/// PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
class PriorityClass {
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
  /// preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  final pulumi.Input<String>? preemptionPolicy;
  /// value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  final pulumi.Input<int> value;

  /// Creates a new [PriorityClass].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [description] description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  /// [globalDefault] globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  /// [value] value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  PriorityClass({
    this.apiVersion,
    this.description,
    this.globalDefault,
    this.kind,
    this.metadata,
    this.preemptionPolicy,
    required this.value,
  });

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

  factory PriorityClass.fromMap(Map<String, dynamic> map) {
    return PriorityClass(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      globalDefault: map['globalDefault'] == null ? null : (map['globalDefault']! as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      metadata: map['metadata'] == null ? null : (ObjectMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      preemptionPolicy: map['preemptionPolicy'] == null ? null : (map['preemptionPolicy']! as String).input(),
      value: (map['value'] as int).input(),
    );
  }
}

