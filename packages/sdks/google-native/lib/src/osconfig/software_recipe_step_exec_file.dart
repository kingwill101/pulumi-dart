// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Executes an artifact or local file.
class SoftwareRecipeStepExecFile {
  /// Defaults to [0]. A list of possible return values that the program can return to indicate a success.
  final pulumi.Input<List<int>>? allowedExitCodes;

  /// Arguments to be passed to the provided executable.
  final pulumi.Input<List<String>>? args;

  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String>? artifactId;

  /// The absolute path of the file on the local filesystem.
  final pulumi.Input<String>? localPath;

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
      allowedExitCodes: (() {
        final guardedValue = map['allowedExitCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      args: (() {
        final guardedValue = map['args'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      artifactId: (() {
        final guardedValue = map['artifactId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localPath: (() {
        final guardedValue = map['localPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
