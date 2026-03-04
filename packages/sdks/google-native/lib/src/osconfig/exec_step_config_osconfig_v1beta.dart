// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_step_config_interpreter_osconfig_v1beta.dart';
import 'gcs_object_osconfig_v1beta.dart';

/// Common configurations for an ExecStep.
class ExecStepConfigOsconfigV1beta {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final pulumi.Input<List<int>>? allowedSuccessCodes;

  /// A Google Cloud Storage object containing the executable.
  final pulumi.Input<GcsObjectOsconfigV1beta>? gcsObject;

  /// The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  final pulumi.Input<ExecStepConfigInterpreterOsconfigV1beta>? interpreter;

  /// An absolute path to the executable on the VM.
  final pulumi.Input<String>? localPath;

  /// Creates a new [ExecStepConfigOsconfigV1beta].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Google Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will be executed directly, which will likely only succeed for scripts with [shebang lines] (https://en.wikipedia.org/wiki/Shebang_\(Unix\)).
  /// [localPath] An absolute path to the executable on the VM.
  ExecStepConfigOsconfigV1beta({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': ?allowedSuccessCodes,
      'gcsObject':
          ?pulumi.Input.mapOptionalInputValue<
            GcsObjectOsconfigV1beta,
            Map<String, dynamic>
          >(gcsObject, (value) => value.toMap()),
      'interpreter':
          ?pulumi.Input.mapOptionalInputValue<
            ExecStepConfigInterpreterOsconfigV1beta,
            String
          >(interpreter, (value) => value.wireValue),
      'localPath': ?localPath,
    };
  }

  factory ExecStepConfigOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepConfigOsconfigV1beta(
      allowedSuccessCodes: (() {
        final guardedValue = map['allowedSuccessCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      gcsObject: (() {
        final guardedValue = map['gcsObject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GcsObjectOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      interpreter: (() {
        final guardedValue = map['interpreter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecStepConfigInterpreterOsconfigV1beta.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      localPath: (() {
        final guardedValue = map['localPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
