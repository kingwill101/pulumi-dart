// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_metric.dart';

class ThrottlingRule {
  /// The action.
  final pulumi.Input<String> action;
  /// The application id.
  final pulumi.Input<List<String>>? applicationId;
  /// The metrics.
  final pulumi.Input<List<ThrottlingMetric>> metrics;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [ThrottlingRule].
  /// [action] The action.
  /// [applicationId] The application id.
  /// [metrics] The metrics.
  /// [requiredFeatures] The required features.
  ThrottlingRule({
    required this.action,
    this.applicationId,
    required this.metrics,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'applicationId': ?applicationId,
      'metrics': pulumi.Input.mapInputValue<List<ThrottlingMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<ThrottlingMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory ThrottlingRule.fromMap(Map<String, dynamic> map) {
    return ThrottlingRule(
      action: (map['action'] as String).input(),
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as List).cast<String>()).input(),
      metrics: (pulumi.Input.decodeList<ThrottlingMetric>(map['metrics'], (value) => ThrottlingMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
    );
  }
}

