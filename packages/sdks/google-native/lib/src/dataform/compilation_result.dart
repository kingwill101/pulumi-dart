import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_compilation_config_response.dart';
import 'compilation_result_args.dart';

/// Creates a new CompilationResult in a given project and location.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CompilationResult extends pulumi.CustomResource {
  /// Immutable. If set, fields of `code_compilation_config` override the default compilation settings that are specified in dataform.json.
  late final pulumi.Output<CodeCompilationConfigResponse> codeCompilationConfig;

  /// Errors encountered during project compilation.
  late final pulumi.Output<List<Map<String, dynamic>>> compilationErrors;

  /// The version of `@dataform/core` that was used for compilation.
  late final pulumi.Output<String> dataformCoreVersion;

  /// Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in the remote repository. Examples: - a commit SHA: `12ade345` - a tag: `tag1` - a branch name: `branch1`
  late final pulumi.Output<String> gitCommitish;
  late final pulumi.Output<String> location;

  /// The compilation result's name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Immutable. The name of the release config to compile. The release config's 'current_compilation_result' field will be updated to this compilation result. Must be in the format `projects/*/locations/*/repositories/*/releaseConfigs/*`.
  late final pulumi.Output<String> releaseConfig;
  late final pulumi.Output<String> repositoryId;

  /// The fully resolved Git commit SHA of the code that was compiled. Not set for compilation results whose source is a workspace.
  late final pulumi.Output<String> resolvedGitCommitSha;

  /// Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/repositories/*/workspaces/*`.
  late final pulumi.Output<String> workspace;

  /// Creates a new [CompilationResult].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompilationResult]. {@macro pulumi_dataform_v1beta1_compilation_result_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompilationResult(
    String name, {
    CompilationResultArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataform/v1beta1:CompilationResult',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    codeCompilationConfig = registerOutput<CodeCompilationConfigResponse>(
      'codeCompilationConfig',
    );
    compilationErrors = registerOutput<List<Map<String, dynamic>>>(
      'compilationErrors',
    );
    dataformCoreVersion = registerOutput<String>('dataformCoreVersion');
    gitCommitish = registerOutput<String>('gitCommitish');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    releaseConfig = registerOutput<String>('releaseConfig');
    repositoryId = registerOutput<String>('repositoryId');
    resolvedGitCommitSha = registerOutput<String>('resolvedGitCommitSha');
    workspace = registerOutput<String>('workspace');
  }
}
