// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_patch_config_post_step_windows_exec_step_config_gcs_object.dart';

class PatchDeploymentPatchConfigPostStepWindowsExecStepConfig {
  /// Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  final pulumi.Input<List<int>>? allowedSuccessCodes;
  /// A Cloud Storage object containing the executable.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject>? gcsObject;
  /// The script interpreter to use to run the script. If no interpreter is specified the script will
  /// be executed directly, which will likely only succeed for scripts with shebang lines.
  /// Possible values are: `SHELL`, `POWERSHELL`.
  final pulumi.Input<String>? interpreter;
  /// An absolute path to the executable on the VM.
  final pulumi.Input<String>? localPath;

  /// Creates a new [PatchDeploymentPatchConfigPostStepWindowsExecStepConfig].
  /// [allowedSuccessCodes] Defaults to [0]. A list of possible return values that the execution can return to indicate a success.
  /// [gcsObject] A Cloud Storage object containing the executable.
  /// [interpreter] The script interpreter to use to run the script. If no interpreter is specified the script will
  /// [localPath] An absolute path to the executable on the VM.
  PatchDeploymentPatchConfigPostStepWindowsExecStepConfig({
    this.allowedSuccessCodes,
    this.gcsObject,
    this.interpreter,
    this.localPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedSuccessCodes': ?allowedSuccessCodes,
      'gcsObject': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject, Map<String, dynamic>>(gcsObject, (value) => value.toMap()),
      'interpreter': ?interpreter,
      'localPath': ?localPath,
    };
  }

  factory PatchDeploymentPatchConfigPostStepWindowsExecStepConfig.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPostStepWindowsExecStepConfig(
      allowedSuccessCodes: map['allowedSuccessCodes'] == null ? null : ((map['allowedSuccessCodes']! as List).cast<int>()).input(),
      gcsObject: map['gcsObject'] == null ? null : (PatchDeploymentPatchConfigPostStepWindowsExecStepConfigGcsObject.fromMap((map['gcsObject']! as Map).cast<String, dynamic>())).input(),
      interpreter: map['interpreter'] == null ? null : (map['interpreter']! as String).input(),
      localPath: map['localPath'] == null ? null : (map['localPath']! as String).input(),
    );
  }
}

