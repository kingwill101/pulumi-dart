// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_recipe_step_run_script_interpreter.dart';

/// Runs a script through an interpreter.
class SoftwareRecipeStepRunScript {
  /// Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  final pulumi.Input<List<int>>? allowedExitCodes;
  /// The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final pulumi.Input<SoftwareRecipeStepRunScriptInterpreter>? interpreter;
  /// The shell script to be executed.
  final pulumi.Input<String> script;

  /// Creates a new [SoftwareRecipeStepRunScript].
  /// [allowedExitCodes] Return codes that indicate that the software installed or updated successfully. Behaviour defaults to [0]
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script is executed directly, which likely only succeed for scripts with [shebang lines](https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [script] The shell script to be executed.
  const SoftwareRecipeStepRunScript({
    this.allowedExitCodes,
    this.interpreter,
    required this.script,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedExitCodes': ?allowedExitCodes,
      'interpreter': ?pulumi.Input.mapOptionalInputValue<SoftwareRecipeStepRunScriptInterpreter, String>(interpreter, (value) => value.wireValue),
      'script': script,
    };
  }

  factory SoftwareRecipeStepRunScript.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepRunScript(
      allowedExitCodes: (() { final guardedValue = map['allowedExitCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      interpreter: (() { final guardedValue = map['interpreter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SoftwareRecipeStepRunScriptInterpreter.fromValue(guardedValue as String)); })(),
      script: pulumi.Input.fromValue(map['script'] as String),
    );
  }
}

