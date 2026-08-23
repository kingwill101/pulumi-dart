// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'metric_identifier_patch.dart';
import 'metric_target_patch.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatch {
  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2>? describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatch>? metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatch>? target;

  /// Creates a new [ObjectMetricSourcePatch].
  /// [describedObject] describedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const ObjectMetricSourcePatch({
    this.describedObject,
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatch, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<MetricTargetPatch, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ObjectMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatch(
      describedObject: (() { final guardedValue = map['describedObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatchAutoscalingV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricIdentifierPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricTargetPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
