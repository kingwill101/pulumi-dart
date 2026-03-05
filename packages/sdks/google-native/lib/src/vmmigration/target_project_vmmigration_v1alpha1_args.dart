// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_target_project_vmmigration_v1alpha1_args_doc}
/// The set of arguments for TargetProject.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_target_project_vmmigration_v1alpha1_args_doc}
class TargetProjectVmmigrationV1alpha1Args {
  /// The target project's description.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// The target project ID (number) or project name.
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. The target_project identifier.
  final pulumi.Input<String> targetProjectId;

  /// Creates a new [TargetProjectVmmigrationV1alpha1Args].
  /// [description] The target project's description.
  /// [location] Optional.
  /// [project] The target project ID (number) or project name.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [targetProjectId] Required. The target_project identifier.
  TargetProjectVmmigrationV1alpha1Args({
    this.description,
    this.location,
    this.project,
    this.requestId,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'targetProjectId': targetProjectId,
    };
  }

  factory TargetProjectVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return TargetProjectVmmigrationV1alpha1Args(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProjectId: pulumi.Input.fromValue(map['targetProjectId'] as String),
    );
  }
}

