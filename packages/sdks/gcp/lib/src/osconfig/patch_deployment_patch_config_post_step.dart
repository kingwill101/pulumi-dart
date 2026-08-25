// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_patch_config_post_step_linux_exec_step_config.dart';
import 'patch_deployment_patch_config_post_step_windows_exec_step_config.dart';

class PatchDeploymentPatchConfigPostStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPostStepLinuxExecStepConfig?>? linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPostStepWindowsExecStepConfig?>? windowsExecStepConfig;

  /// Creates a new [PatchDeploymentPatchConfigPostStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  const PatchDeploymentPatchConfigPostStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPostStepLinuxExecStepConfig, Map<String, dynamic>>(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPostStepWindowsExecStepConfig, Map<String, dynamic>>(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentPatchConfigPostStep.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPostStep(
      linuxExecStepConfig: (() { final guardedValue = map['linuxExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPostStepLinuxExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsExecStepConfig: (() { final guardedValue = map['windowsExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPostStepWindowsExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
