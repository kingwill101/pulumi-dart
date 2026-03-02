// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// represents the current status of a scale subresource.
class ScaleStatusPatch {
  /// actual number of observed instances of the scaled object.
  final pulumi.Input<int>? replicas;
  /// label query over pods that should match the replicas count. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  final pulumi.Input<Map<String, String>>? selector;
  /// label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  final pulumi.Input<String>? targetSelector;

  /// Creates a new [ScaleStatusPatch].
  /// [replicas] actual number of observed instances of the scaled object.
  /// [selector] label query over pods that should match the replicas count. More info: http://kubernetes.io/docs/user-guide/labels#label-selectors
  /// [targetSelector] label selector for pods that should match the replicas count. This is a serializated version of both map-based and more expressive set-based selectors. This is done to avoid introspection in the clients. The string will be in the same format as the query-param syntax. If the target type only supports map-based selectors, both this field and map-based selector field are populated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  ScaleStatusPatch({
    this.replicas,
    this.selector,
    this.targetSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
      'selector': ?selector,
      'targetSelector': ?targetSelector,
    };
  }

  factory ScaleStatusPatch.fromMap(Map<String, dynamic> map) {
    return ScaleStatusPatch(
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      selector: map['selector'] == null ? null : ((map['selector']! as Map).cast<String, String>()).input(),
      targetSelector: map['targetSelector'] == null ? null : (map['targetSelector']! as String).input(),
    );
  }
}

