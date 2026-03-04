// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for a latency threshold SLI.
class LatencyCriteriaResponse {
  /// Good service is defined to be the count of requests made to this service that return in no more than threshold.
  final pulumi.Input<String> threshold;

  /// Creates a new [LatencyCriteriaResponse].
  /// [threshold] Good service is defined to be the count of requests made to this service that return in no more than threshold.
  LatencyCriteriaResponse({required this.threshold});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'threshold': threshold};
  }

  factory LatencyCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return LatencyCriteriaResponse(
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}
