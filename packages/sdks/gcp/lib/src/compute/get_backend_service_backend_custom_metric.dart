// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendServiceBackendCustomMetric {
  /// If true, the metric data is collected and reported to Cloud
  /// Monitoring, but is not used for load balancing.
  final pulumi.Input<bool> dryRun;
  /// Optional parameter to define a target utilization for the Custom Metrics
  /// balancing mode. The valid range is &lt;code&gt;[0.0, 1.0]&lt;/code&gt;.
  final pulumi.Input<double> maxUtilization;
  /// The name of the Backend Service.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Creates a new [GetBackendServiceBackendCustomMetric].
  /// [dryRun] If true, the metric data is collected and reported to Cloud
  /// [maxUtilization] Optional parameter to define a target utilization for the Custom Metrics
  /// [name] The name of the Backend Service.
  const GetBackendServiceBackendCustomMetric({
    required this.dryRun,
    required this.maxUtilization,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': dryRun,
      'maxUtilization': maxUtilization,
      'name': name,
    };
  }

  factory GetBackendServiceBackendCustomMetric.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceBackendCustomMetric(
      dryRun: pulumi.Input.fromValue(map['dryRun'] as bool),
      maxUtilization: pulumi.Input.fromValue(map['maxUtilization'] as double),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

