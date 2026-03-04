// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeUpdateStepScriptRun {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final pulumi.Input<List<int>>? allowedExitCodes;

  /// The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,
  /// which likely only succeed for scripts with shebang lines.
  /// Possible values are: `SHELL`, `POWERSHELL`.
  final pulumi.Input<String>? interpreter;

  /// The shell script to be executed.
  final pulumi.Input<String> script;

  /// Creates a new [GuestPoliciesRecipeUpdateStepScriptRun].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script is executed directly,
  /// [script] The shell script to be executed.
  GuestPoliciesRecipeUpdateStepScriptRun({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': ?allowedExitCodes,
      'interpreter': ?interpreter,
      'script': script,
    };
  }

  factory GuestPoliciesRecipeUpdateStepScriptRun.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuestPoliciesRecipeUpdateStepScriptRun(
      allowedExitCodes: (() {
        final guardedValue = map['allowedExitCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      interpreter: (() {
        final guardedValue = map['interpreter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}
