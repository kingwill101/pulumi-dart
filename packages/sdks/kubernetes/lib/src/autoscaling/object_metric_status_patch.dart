// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_patch_autoscaling_v2.dart';
import 'metric_identifier_patch.dart';
import 'metric_value_status_patch.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatusPatch {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatusPatch>? current;
  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  final pulumi.Input<CrossVersionObjectReferencePatchAutoscalingV2>? describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatch>? metric;

  /// Creates a new [ObjectMetricStatusPatch].
  /// [current] current contains the current value for the given metric
  /// [describedObject] DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  ObjectMetricStatusPatch({
    this.current,
    this.describedObject,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?pulumi.Input.mapOptionalInputValue<MetricValueStatusPatch, Map<String, dynamic>>(current, (value) => value.toMap()),
      'describedObject': ?pulumi.Input.mapOptionalInputValue<CrossVersionObjectReferencePatchAutoscalingV2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatch, Map<String, dynamic>>(metric, (value) => value.toMap()),
    };
  }

  factory ObjectMetricStatusPatch.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatusPatch(
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricValueStatusPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      describedObject: (() { final guardedValue = map['describedObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossVersionObjectReferencePatchAutoscalingV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricIdentifierPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

