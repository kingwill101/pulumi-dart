// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2beta2.dart';
import 'metric_identifier_patch_autoscaling_v2beta2.dart';
import 'metric_target_patch_autoscaling_v2beta2.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSourcePatchAutoscalingV2beta2 {
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2beta2?>? describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatchAutoscalingV2beta2?>? metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatchAutoscalingV2beta2?>? target;

  /// Creates a new [ObjectMetricSourcePatchAutoscalingV2beta2].
  /// [describedObject] Optional.
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  const ObjectMetricSourcePatchAutoscalingV2beta2({
    this.describedObject,
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2beta2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatchAutoscalingV2beta2, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<MetricTargetPatchAutoscalingV2beta2, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ObjectMetricSourcePatchAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSourcePatchAutoscalingV2beta2(
      describedObject: (() { final guardedValue = map['describedObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricIdentifierPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricTargetPatchAutoscalingV2beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
