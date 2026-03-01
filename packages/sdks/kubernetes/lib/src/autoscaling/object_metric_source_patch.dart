// ignore_for_file: unused_element, unnecessary_cast

import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'metric_identifier_patch.dart';
import 'metric_target_patch.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatch {
  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion
  final CrossVersionObjectReferencePatchAutoscalingV2? describedObject;
  /// metric identifies the target metric by name and selector
  final MetricIdentifierPatch? metric;
  /// target specifies the target value for the given metric
  final MetricTargetPatch? target;

  /// Creates a new [ObjectMetricSourcePatch].
  /// [describedObject] describedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSourcePatch({
    this.describedObject,
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': ?describedObject == null ? null : describedObject!.toMap(),
      'metric': ?metric == null ? null : metric!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
    };
  }

  factory ObjectMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatch(
      describedObject: map['describedObject'] == null ? null : CrossVersionObjectReferencePatchAutoscalingV2.fromMap((map['describedObject'] as Map).cast<String, dynamic>()),
      metric: map['metric'] == null ? null : MetricIdentifierPatch.fromMap((map['metric'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : MetricTargetPatch.fromMap((map['target'] as Map).cast<String, dynamic>()),
    );
  }
}

