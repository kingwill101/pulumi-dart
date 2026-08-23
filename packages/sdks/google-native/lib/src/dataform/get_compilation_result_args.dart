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
  const GetCompilationResultArgs({
    required this.compilationResultId,
    required this.location,
    this.project,
    required this.repositoryId,
  });

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
      compilationResultId: pulumi.Input.fromValue(map['compilationResultId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
