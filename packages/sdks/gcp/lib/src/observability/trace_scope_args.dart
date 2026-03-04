// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_trace_scope_trace_scope_args_doc}
/// The set of arguments for TraceScope.
/// {@endtemplate}
/// {@macro pulumi_observability_trace_scope_trace_scope_args_doc}
class TraceScopeArgs {
  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// GCP region the TraceScope is stored in. Only `global` is supported.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  final pulumi.Input<List<String>> resourceNames;

  /// A client-assigned identifier for the trace scope.
  final pulumi.Input<String> traceScopeId;

  /// Creates a new [TraceScopeArgs].
  /// [description] Describes this trace scope.
  /// [location] GCP region the TraceScope is stored in. Only `global` is supported.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceNames] Names of the projects that are included in this trace scope.
  /// [traceScopeId] A client-assigned identifier for the trace scope.
  TraceScopeArgs({
    this.description,
    required this.location,
    this.project,
    required this.resourceNames,
    required this.traceScopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'project': ?project,
      'resourceNames': resourceNames,
      'traceScopeId': traceScopeId,
    };
  }

  factory TraceScopeArgs.fromMap(Map<String, dynamic> map) {
    return TraceScopeArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceNames: pulumi.Input.fromValue(
        (map['resourceNames'] as List).cast<String>(),
      ),
      traceScopeId: pulumi.Input.fromValue(map['traceScopeId'] as String),
    );
  }
}
