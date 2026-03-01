// ignore_for_file: unused_element, unnecessary_cast


/// Executes an artifact or local file.
class SoftwareRecipeStepExecFile {
  /// Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  final List<int>? allowedExitCodes;
  /// Arguments to be passed to the provided executable.
  final List<String>? args;
  /// The id of the relevant artifact in the recipe.
  final String? artifactId;
  /// The absolute path of the file on the local filesystem.
  final String? localPath;

  /// Creates a new [SoftwareRecipeStepExecFile].
  /// [allowedExitCodes] Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  SoftwareRecipeStepExecFile({
    this.allowedExitCodes,
    this.args,
    this.artifactId,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': ?allowedExitCodes,
      'args': ?args,
      'artifactId': ?artifactId,
      'localPath': ?localPath,
    };
  }

  factory SoftwareRecipeStepExecFile.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepExecFile(
      allowedExitCodes: map['allowedExitCodes'] == null ? null : (map['allowedExitCodes'] as List).cast<int>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      artifactId: map['artifactId'] == null ? null : map['artifactId'] as String,
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
    );
  }
}

