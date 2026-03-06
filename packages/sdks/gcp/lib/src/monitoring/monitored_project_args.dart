// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_monitored_project_monitored_project_args_doc}
/// The set of arguments for MonitoredProject.
/// {@endtemplate}
/// {@macro pulumi_monitoring_monitored_project_monitored_project_args_doc}
class MonitoredProjectArgs {
  /// Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  final pulumi.Input<String> metricsScope;
  /// Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  final pulumi.Input<String>? name;

  /// Creates a new [MonitoredProjectArgs].
  /// [metricsScope] Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
  /// [name] Immutable. The resource name of the `MonitoredProject`. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: `locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}`
  const MonitoredProjectArgs({
    required this.metricsScope,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsScope': metricsScope,
      'name': ?name,
    };
  }

  factory MonitoredProjectArgs.fromMap(Map<String, dynamic> map) {
    return MonitoredProjectArgs(
      metricsScope: pulumi.Input.fromValue(map['metricsScope'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

