// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_patch_config_pre_step_linux_exec_step_config.dart';
import 'patch_deployment_patch_config_pre_step_windows_exec_step_config.dart';

class PatchDeploymentPatchConfigPreStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPreStepLinuxExecStepConfig?>? linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentPatchConfigPreStepWindowsExecStepConfig?>? windowsExecStepConfig;

  /// Creates a new [PatchDeploymentPatchConfigPreStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  const PatchDeploymentPatchConfigPreStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPreStepLinuxExecStepConfig, Map<String, dynamic>>(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentPatchConfigPreStepWindowsExecStepConfig, Map<String, dynamic>>(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentPatchConfigPreStep.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigPreStep(
      linuxExecStepConfig: (() { final guardedValue = map['linuxExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPreStepLinuxExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsExecStepConfig: (() { final guardedValue = map['windowsExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentPatchConfigPreStepWindowsExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
