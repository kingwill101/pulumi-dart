// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_version_object_reference_autoscaling_v2.dart';
import 'metric_identifier.dart';
import 'metric_value_status.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus {
  /// current contains the current value for the given metric
  final pulumi.Input<MetricValueStatus> current;

  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  final pulumi.Input<CrossVersionObjectReferenceAutoscalingV2> describedObject;

  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifier> metric;

  /// Creates a new [ObjectMetricStatus].
  /// [current] current contains the current value for the given metric
  /// [describedObject] DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  /// [metric] metric identifies the target metric by name and selector
  ObjectMetricStatus({
    required this.current,
    required this.describedObject,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current':
          pulumi.Input.mapInputValue<MetricValueStatus, Map<String, dynamic>>(
            current,
            (value) => value.toMap(),
          ),
      'describedObject':
          pulumi.Input.mapInputValue<
            CrossVersionObjectReferenceAutoscalingV2,
            Map<String, dynamic>
          >(describedObject, (value) => value.toMap()),
      'metric':
          pulumi.Input.mapInputValue<MetricIdentifier, Map<String, dynamic>>(
            metric,
            (value) => value.toMap(),
          ),
    };
  }

  factory ObjectMetricStatus.fromMap(Map<String, dynamic> map) {
    return ObjectMetricStatus(
      current: pulumi.Input.fromValue(
        MetricValueStatus.fromMap(
          (map['current']! as Map).cast<String, dynamic>(),
        ),
      ),
      describedObject: pulumi.Input.fromValue(
        CrossVersionObjectReferenceAutoscalingV2.fromMap(
          (map['describedObject']! as Map).cast<String, dynamic>(),
        ),
      ),
      metric: pulumi.Input.fromValue(
        MetricIdentifier.fromMap(
          (map['metric']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
