// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_autoscaling_v2.dart';
import 'metric_identifier.dart';
import 'metric_target.dart';

/// ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource {
  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2> describedObject;
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifier> metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTarget> target;

  /// Creates a new [ObjectMetricSource].
  /// [describedObject] describedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ObjectMetricSource({
    required this.describedObject,
    required this.metric,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'describedObject': pulumi.Input.mapInputValue<CrossVersionObjectReferenceAutoscalingV2, Map<String, dynamic>>(describedObject, (value) => value.toMap()),
      'metric': pulumi.Input.mapInputValue<MetricIdentifier, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<MetricTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ObjectMetricSource.fromMap(Map<String, dynamic> map) {
    return ObjectMetricSource(
      describedObject: (CrossVersionObjectReferenceAutoscalingV2.fromMap((map['describedObject'] as Map).cast<String, dynamic>())).input(),
      metric: (MetricIdentifier.fromMap((map['metric'] as Map).cast<String, dynamic>())).input(),
      target: (MetricTarget.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

