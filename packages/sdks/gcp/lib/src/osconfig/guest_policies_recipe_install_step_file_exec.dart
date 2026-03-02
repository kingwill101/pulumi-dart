// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeInstallStepFileExec {
  /// A list of possible return values that the program can return to indicate a success. Defaults to [0].
  final pulumi.Input<String>? allowedExitCodes;
  /// Arguments to be passed to the provided executable.
  final pulumi.Input<List<String>>? args;
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String>? artifactId;
  /// The absolute path of the file on the local filesystem.
  final pulumi.Input<String>? localPath;

  /// Creates a new [GuestPoliciesRecipeInstallStepFileExec].
  /// [allowedExitCodes] A list of possible return values that the program can return to indicate a success. Defaults to [0].
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  GuestPoliciesRecipeInstallStepFileExec({
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

  factory GuestPoliciesRecipeInstallStepFileExec.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeInstallStepFileExec(
      allowedExitCodes: map['allowedExitCodes'] == null ? null : (map['allowedExitCodes']! as String).input(),
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      artifactId: map['artifactId'] == null ? null : (map['artifactId']! as String).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
    );
  }
}

