// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TelemetryPolicyTelemetryTarget {
  /// Lists references to the resources that are targeted by the policy.
  /// Types of resources supported:
  /// - `run.googleapis.com/`
  /// - `compute.googleapis.com/`
  /// - `networkservices.googleapis.com/`
  /// The format must be the full resource name of a supported resource.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [TelemetryPolicyTelemetryTarget].
  /// [resources] Lists references to the resources that are targeted by the policy.
  const TelemetryPolicyTelemetryTarget({
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': resources,
    };
  }

  factory TelemetryPolicyTelemetryTarget.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyTelemetryTarget(
      resources: pulumi.Input.fromValue((map['resources'] as List).cast<String>()),
    );
  }
}
