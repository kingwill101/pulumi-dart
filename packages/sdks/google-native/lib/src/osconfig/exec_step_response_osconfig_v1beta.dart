// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_step_config_response_osconfig_v1beta.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepResponseOsconfigV1beta {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigResponseOsconfigV1beta> linuxExecStepConfig;
  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigResponseOsconfigV1beta> windowsExecStepConfig;

  /// Creates a new [ExecStepResponseOsconfigV1beta].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepResponseOsconfigV1beta({
    required this.linuxExecStepConfig,
    required this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig': pulumi.Input.mapInputValue<ExecStepConfigResponseOsconfigV1beta, Map<String, dynamic>>(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig': pulumi.Input.mapInputValue<ExecStepConfigResponseOsconfigV1beta, Map<String, dynamic>>(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory ExecStepResponseOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return ExecStepResponseOsconfigV1beta(
      linuxExecStepConfig: (ExecStepConfigResponseOsconfigV1beta.fromMap((map['linuxExecStepConfig'] as Map).cast<String, dynamic>())).input(),
      windowsExecStepConfig: (ExecStepConfigResponseOsconfigV1beta.fromMap((map['windowsExecStepConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

