// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config_response.dart';
import 'compilation_error_response.dart';

/// Result data returned by getCompilationResult.
class GetCompilationResultResult {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  final CodeCompilationConfigResponse? codeCompilationConfig;
  /// Errors encountered during project compilation.
  final List<CompilationErrorResponse>? compilationErrors;
  /// The version of `@dataform/core` that was used for compilation.
  final String? dataformCoreVersion;
  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  final String? gitCommitish;
  /// The compilation result's name.
  final String? name;
  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  final String? releaseConfig;
  /// The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  final String? resolvedGitCommitSha;
  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  final String? workspace;

  /// Creates a new [GetCompilationResultResult].
  /// [codeCompilationConfig] Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  /// [compilationErrors] Errors encountered during project compilation.
  /// [dataformCoreVersion] The version of `@dataform/core` that was used for compilation.
  /// [gitCommitish] Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  /// [name] The compilation result's name.
  /// [releaseConfig] Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  /// [resolvedGitCommitSha] The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  /// [workspace] Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  const GetCompilationResultResult({
    this.codeCompilationConfig,
    this.compilationErrors,
    this.dataformCoreVersion,
    this.gitCommitish,
    this.name,
    this.releaseConfig,
    this.resolvedGitCommitSha,
    this.workspace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeCompilationConfig': ?codeCompilationConfig?.toMap(),
      'compilationErrors': ?(() { final guardedValue = compilationErrors; if (guardedValue == null) return null; return pulumi.Input.encodeList<CompilationErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataformCoreVersion': ?dataformCoreVersion,
      'gitCommitish': ?gitCommitish,
      'name': ?name,
      'releaseConfig': ?releaseConfig,
      'resolvedGitCommitSha': ?resolvedGitCommitSha,
      'workspace': ?workspace,
    };
  }

  factory GetCompilationResultResult.fromMap(Map<String, dynamic> map) {
    return GetCompilationResultResult(
      codeCompilationConfig: (() { final guardedValue = map['codeCompilationConfig']; if (guardedValue == null) return null; return CodeCompilationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      compilationErrors: (() { final guardedValue = map['compilationErrors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CompilationErrorResponse>(guardedValue, (value) => CompilationErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataformCoreVersion: (() { final guardedValue = map['dataformCoreVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gitCommitish: (() { final guardedValue = map['gitCommitish']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseConfig: (() { final guardedValue = map['releaseConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resolvedGitCommitSha: (() { final guardedValue = map['resolvedGitCommitSha']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspace: (() { final guardedValue = map['workspace']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
