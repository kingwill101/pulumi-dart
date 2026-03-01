// ignore_for_file: unused_element, unnecessary_cast

import 'exec_step_config.dart';

/// A step that runs an executable for a PatchJob.
class ExecStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final ExecStepConfig? linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final ExecStepConfig? windowsExecStepConfig;

  /// Creates a new [ExecStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?linuxExecStepConfig == null ? null : linuxExecStepConfig!.toMap(),
      'windowsExecStepConfig': ?windowsExecStepConfig == null ? null : windowsExecStepConfig!.toMap(),
    };
  }

  factory ExecStep.fromMap(Map<String, dynamic> map) {
    return ExecStep(
      linuxExecStepConfig: map['linuxExecStepConfig'] == null ? null : ExecStepConfig.fromMap((map['linuxExecStepConfig'] as Map).cast<String, dynamic>()),
      windowsExecStepConfig: map['windowsExecStepConfig'] == null ? null : ExecStepConfig.fromMap((map['windowsExecStepConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

