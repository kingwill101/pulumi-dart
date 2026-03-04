// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_metric_response.dart';

class ThrottlingRuleResponse {
  /// The action.
  final pulumi.Input<String> action;

  /// The application id.
  final pulumi.Input<List<String>>? applicationId;

  /// The metrics.
  final pulumi.Input<List<ThrottlingMetricResponse>> metrics;

  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [ThrottlingRuleResponse].
  /// [action] The action.
  /// [applicationId] The application id.
  /// [metrics] The metrics.
  /// [requiredFeatures] The required features.
  ThrottlingRuleResponse({
    required this.action,
    this.applicationId,
    required this.metrics,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'applicationId': ?applicationId,
      'metrics':
          pulumi.Input.mapInputValue<
            List<ThrottlingMetricResponse>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  ThrottlingMetricResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory ThrottlingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingRuleResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      metrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ThrottlingMetricResponse>(
          map['metrics']!,
          (value) => ThrottlingMetricResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      requiredFeatures: (() {
        final guardedValue = map['requiredFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
