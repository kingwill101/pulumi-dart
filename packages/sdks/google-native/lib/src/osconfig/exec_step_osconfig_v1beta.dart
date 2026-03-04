// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_step_config_osconfig_v1beta.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepOsconfigV1beta {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigOsconfigV1beta>? linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigOsconfigV1beta>? windowsExecStepConfig;

  /// Creates a new [ExecStepOsconfigV1beta].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepOsconfigV1beta({
    this.linuxExecStepConfig,
    this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ExecStepConfigOsconfigV1beta,
            Map<String, dynamic>
          >(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ExecStepConfigOsconfigV1beta,
            Map<String, dynamic>
          >(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory ExecStepOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepOsconfigV1beta(
      linuxExecStepConfig: (() {
        final guardedValue = map['linuxExecStepConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecStepConfigOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      windowsExecStepConfig: (() {
        final guardedValue = map['windowsExecStepConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExecStepConfigOsconfigV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
