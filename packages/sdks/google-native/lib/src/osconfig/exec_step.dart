// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_step_config.dart';

/// A step that runs an executable for a PatchJob.
class ExecStep {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfig>? linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfig>? windowsExecStepConfig;

  /// Creates a new [ExecStep].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  const ExecStep({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': ?pulumi.Input.mapOptionalInputValue<ExecStepConfig, Map<String, dynamic>>(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig': ?pulumi.Input.mapOptionalInputValue<ExecStepConfig, Map<String, dynamic>>(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory ExecStep.fromMap(Map<String, dynamic> map) {
    return ExecStep(
      linuxExecStepConfig: (() { final guardedValue = map['linuxExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      windowsExecStepConfig: (() { final guardedValue = map['windowsExecStepConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecStepConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
