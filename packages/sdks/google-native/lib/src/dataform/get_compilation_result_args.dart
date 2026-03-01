// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_v1beta1_get_compilation_result_args_doc}
/// Arguments for getCompilationResult.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_get_compilation_result_args_doc}
class GetCompilationResultArgs {
  final pulumi.Input<String> compilationResultId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetCompilationResultArgs].
  /// [compilationResultId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetCompilationResultArgs({
    required pulumi.Output<String> compilationResultId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      compilationResultId = pulumi.Input.asInput<String>(compilationResultId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compilationResultId': compilationResultId,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetCompilationResultArgs.fromMap(Map<String, dynamic> map) {
    return GetCompilationResultArgs(
      compilationResultId: pulumi.Output.create<String>(map['compilationResultId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

