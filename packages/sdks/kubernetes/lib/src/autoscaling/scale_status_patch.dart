// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatusPatch {
  /// replicas is the actual number of observed instances of the scaled object.
  final pulumi.Input<int>? replicas;
  /// selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  final pulumi.Input<String>? selector;

  /// Creates a new [ScaleStatusPatch].
  /// [replicas] replicas is the actual number of observed instances of the scaled object.
  /// [selector] selector is the label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  const ScaleStatusPatch({
    this.replicas,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicas': ?replicas,
      'selector': ?selector,
    };
  }

  factory ScaleStatusPatch.fromMap(Map<String, dynamic> map) {
    return ScaleStatusPatch(
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

