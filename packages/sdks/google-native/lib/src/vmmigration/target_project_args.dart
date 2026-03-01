// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_target_project_args_doc}
/// The set of arguments for TargetProject.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_target_project_args_doc}
class TargetProjectArgs {
  /// The target project's description.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// The target project ID (number) or project name.
  final pulumi.Input<String>? project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. The target_project identifier.
  final pulumi.Input<String> targetProjectId;

  /// Creates a new [TargetProjectArgs].
  /// [description] The target project's description.
  /// [location] Optional.
  /// [project] The target project ID (number) or project name.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [targetProjectId] Required. The target_project identifier.
  TargetProjectArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<String> targetProjectId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      targetProjectId = pulumi.Input.asInput<String>(targetProjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'project': ?project,
      'requestId': ?requestId,
      'targetProjectId': targetProjectId,
    };
  }

  factory TargetProjectArgs.fromMap(Map<String, dynamic> map) {
    return TargetProjectArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      targetProjectId: pulumi.Output.create<String>(map['targetProjectId'] as String),
    );
  }
}

