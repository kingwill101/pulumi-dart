// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes an artifact or local file.
class SoftwareRecipeStepExecFileResponse {
  /// Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  final pulumi.Input<List<int>> allowedExitCodes;
  /// Arguments to be passed to the provided executable.
  final pulumi.Input<List<String>> args;
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;
  /// The absolute path of the file on the local filesystem.
  final pulumi.Input<String> localPath;

  /// Creates a new [SoftwareRecipeStepExecFileResponse].
  /// [allowedExitCodes] Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  const SoftwareRecipeStepExecFileResponse({
    required this.allowedExitCodes,
    required this.args,
    required this.artifactId,
    required this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': allowedExitCodes,
      'args': args,
      'artifactId': artifactId,
      'localPath': localPath,
    };
  }

  factory SoftwareRecipeStepExecFileResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExecFileResponse(
      allowedExitCodes: pulumi.Input.fromValue((map['allowedExitCodes'] as List).cast<int>()),
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
    );
  }
}
