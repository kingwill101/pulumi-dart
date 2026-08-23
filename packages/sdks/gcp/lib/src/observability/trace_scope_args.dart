// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_trace_scope_trace_scope_args_doc}
/// The set of arguments for TraceScope.
/// {@endtemplate}
/// {@macro pulumi_observability_trace_scope_trace_scope_args_doc}
class TraceScopeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Describes this trace scope.
  /// [location] GCP region the TraceScope is stored in. Only `global` is supported.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceNames] Names of the projects that are included in this trace scope.
  /// [traceScopeId] A client-assigned identifier for the trace scope.
  const TraceScopeArgs({
    this.deletionPolicy,
    this.description,
    required this.location,
    this.project,
    required this.resourceNames,
    required this.traceScopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': location,
      'project': ?project,
      'resourceNames': resourceNames,
      'traceScopeId': traceScopeId,
    };
  }

  factory TraceScopeArgs.fromMap(Map<String, dynamic> map) {
    return TraceScopeArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceNames: pulumi.Input.fromValue((map['resourceNames'] as List).cast<String>()),
      traceScopeId: pulumi.Input.fromValue(map['traceScopeId'] as String),
    );
  }
}
