// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config.dart';

/// {@template pulumi_dataform_v1beta1_compilation_result_args_doc}
/// The set of arguments for CompilationResult.
/// {@endtemplate}
/// {@macro pulumi_dataform_v1beta1_compilation_result_args_doc}
class CompilationResultArgs {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final pulumi.Input<CodeCompilationConfig>? codeCompilationConfig;

  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final pulumi.Input<String>? gitCommitish;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final pulumi.Input<String>? releaseConfig;
  final pulumi.Input<String> repositoryId;

  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  final pulumi.Input<String>? workspace;

  /// Creates a new [CompilationResultArgs].
  /// [codeCompilationConfig] Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [gitCommitish] Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [location] Optional.
  /// [project] Optional.
  /// [releaseConfig] Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [repositoryId] Required.
  /// [workspace] Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  CompilationResultArgs({
    this.codeCompilationConfig,
    this.gitCommitish,
    this.location,
    this.project,
    this.releaseConfig,
    required this.repositoryId,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CodeCompilationConfig,
            Map<String, dynamic>
          >(codeCompilationConfig, (value) => value.toMap()),
      'gitCommitish': ?gitCommitish,
      'location': ?location,
      'project': ?project,
      'releaseConfig': ?releaseConfig,
      'repositoryId': repositoryId,
      'workspace': ?workspace,
    };
  }

  factory CompilationResultArgs.fromMap(Map<String, dynamic> map) {
    return CompilationResultArgs(
      codeCompilationConfig: (() {
        final guardedValue = map['codeCompilationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CodeCompilationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      gitCommitish: (() {
        final guardedValue = map['gitCommitish'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseConfig: (() {
        final guardedValue = map['releaseConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      workspace: (() {
        final guardedValue = map['workspace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
