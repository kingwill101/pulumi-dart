// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MonitoredProject resources.
class MonitoredProjectState {
  /// Output only. The time when this `MonitoredProject` was created.
  final pulumi.Input<String>? createTime;
  /// Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  final pulumi.Input<String>? metricsScope;
  /// Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  final pulumi.Input<String>? name;

  /// Creates a new [MonitoredProjectState].
  /// [createTime] Output only. The time when this `MonitoredProject` was created.
  /// [metricsScope] Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  /// [name] Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  MonitoredProjectState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? metricsScope,
    pulumi.Output<String>? name,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      metricsScope = pulumi.Input.asOptionalInput<String>(metricsScope),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'metricsScope': ?metricsScope,
      'name': ?name,
    };
  }

  factory MonitoredProjectState.fromMap(Map<String, dynamic> map) {
    return MonitoredProjectState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      metricsScope: map['metricsScope'] == null ? null : pulumi.Output.create<String>(map['metricsScope'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

