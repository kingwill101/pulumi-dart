// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeUpdateStepFileExec {
  /// A list of possible return values that the program can return to indicate a success. Defaults to [0].
  final pulumi.Input<List<int>>? allowedExitCodes;
  /// Arguments to be passed to the provided executable.
  final pulumi.Input<List<String>>? args;
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String>? artifactId;
  /// The absolute path of the file on the local filesystem.
  final pulumi.Input<String>? localPath;

  /// Creates a new [GuestPoliciesRecipeUpdateStepFileExec].
  /// [allowedExitCodes] A list of possible return values that the program can return to indicate a success. Defaults to [0].
  /// [args] Arguments to be passed to the provided executable.
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [localPath] The absolute path of the file on the local filesystem.
  const GuestPoliciesRecipeUpdateStepFileExec({
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

  factory GuestPoliciesRecipeUpdateStepFileExec.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStepFileExec(
      allowedExitCodes: (() { final guardedValue = map['allowedExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      artifactId: (() { final guardedValue = map['artifactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

