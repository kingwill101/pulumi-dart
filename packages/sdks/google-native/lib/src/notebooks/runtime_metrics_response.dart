// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains runtime daemon metrics, such as OS and kernels and sessions stats.
class RuntimeMetricsResponse {
  /// The system metrics.
  final pulumi.Input<Map<String, String>> systemMetrics;

  /// Creates a new [RuntimeMetricsResponse].
  /// [systemMetrics] The system metrics.
  RuntimeMetricsResponse({
    required this.systemMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemMetrics': systemMetrics,
    };
  }

  factory RuntimeMetricsResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeMetricsResponse(
      systemMetrics: pulumi.Input.fromValue((map['systemMetrics'] as Map).cast<String, String>()),
    );
  }
}

