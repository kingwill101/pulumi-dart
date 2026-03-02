// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsConfigRuntimeConfigAppHubWorkload {
  /// (Output)
  /// The criticality of the App Hub Workload.
  final pulumi.Input<String>? criticality;
  /// (Output)
  /// The environment of the App Hub Workload.
  final pulumi.Input<String>? environment;
  /// (Output)
  /// Output only. The name of the App Hub Workload.
  /// Format:
  /// `projects/{project}/locations/{location}/applications/{application}/workloads/{workload}`.
  final pulumi.Input<String>? workload;

  /// Creates a new [InsightsConfigRuntimeConfigAppHubWorkload].
  /// [criticality] (Output)
  /// [environment] (Output)
  /// [workload] (Output)
  InsightsConfigRuntimeConfigAppHubWorkload({
    this.criticality,
    this.environment,
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criticality': ?criticality,
      'environment': ?environment,
      'workload': ?workload,
    };
  }

  factory InsightsConfigRuntimeConfigAppHubWorkload.fromMap(Map<String, dynamic> map) {
    return InsightsConfigRuntimeConfigAppHubWorkload(
      criticality: map['criticality'] == null ? null : (map['criticality'] as String).input(),
      environment: map['environment'] == null ? null : (map['environment'] as String).input(),
      workload: map['workload'] == null ? null : (map['workload'] as String).input(),
    );
  }
}

