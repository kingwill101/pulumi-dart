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
      criticality: (() { final guardedValue = map['criticality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

