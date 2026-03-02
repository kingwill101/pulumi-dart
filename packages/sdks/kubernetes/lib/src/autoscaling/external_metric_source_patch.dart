// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_identifier_patch.dart';
import 'metric_target_patch.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSourcePatch {
  /// metric identifies the target metric by name and selector
  final pulumi.Input<MetricIdentifierPatch>? metric;
  /// target specifies the target value for the given metric
  final pulumi.Input<MetricTargetPatch>? target;

  /// Creates a new [ExternalMetricSourcePatch].
  /// [metric] metric identifies the target metric by name and selector
  /// [target] target specifies the target value for the given metric
  ExternalMetricSourcePatch({
    this.metric,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?pulumi.Input.mapOptionalInputValue<MetricIdentifierPatch, Map<String, dynamic>>(metric, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<MetricTargetPatch, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory ExternalMetricSourcePatch.fromMap(Map<String, dynamic> map) {
    return ExternalMetricSourcePatch(
      metric: map['metric'] == null ? null : (MetricIdentifierPatch.fromMap((map['metric']! as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (MetricTargetPatch.fromMap((map['target']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

