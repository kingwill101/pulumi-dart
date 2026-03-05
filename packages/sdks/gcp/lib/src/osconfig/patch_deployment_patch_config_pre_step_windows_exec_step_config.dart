// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_patch_config_pre_step_windows_exec_step_config_gcs_object.dart';

class PatchDeploymentPatchConfigPreStepWindowsExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final pulumi.Input<List<int>>? allowedSuccessCodes;
  /// A Cloud Storage object containing the executable.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject>? gcsObject;
  /// The script interpreter to use to run the script. If no interpreter is specified the script will
  /// be executed directly, which will likely only succeed for scripts with shebang lines.
  /// Possible values are: `SHELL`, `POWERSHELL`.
  final pulumi.Input<String>? interpreter;
  /// An absolute path to the executable on the VM.
  final pulumi.Input<String>? localPath;

  /// Creates a new [PatchDeploymentPatchConfigPreStepWindowsExecStepConfig].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will
  /// [localPath] An absolute path to the executable on the VM.
  PatchDeploymentPatchConfigPreStepWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': ?allowedSuccessCodes,
      'gcsObject': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject, Map<String, dynamic>>(gcsObject, (value) => value.toMap()),
      'interpreter': ?interpreter,
      'localPath': ?localPath,
    };
  }

  factory PatchDeploymentPatchConfigPreStepWindowsExecStepConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPreStepWindowsExecStepConfig(
      allowedSuccessCodes: (() { final guardedValue = map['allowedSuccessCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      gcsObject: (() { final guardedValue = map['gcsObject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPreStepWindowsExecStepConfigGcsObject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interpreter: (() { final guardedValue = map['interpreter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

