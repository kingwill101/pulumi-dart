// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exec_step_config_response.dart';

/// A step that runs an executable for a PatchJob.
class ExecStepResponse {
  /// The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigResponse> linuxExecStepConfig;

  /// The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  final pulumi.Input<ExecStepConfigResponse> windowsExecStepConfig;

  /// Creates a new [ExecStepResponse].
  /// [linuxExecStepConfig] The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  /// [windowsExecStepConfig] The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  ExecStepResponse({
    required this.linuxExecStepConfig,
    required this.windowsExecStepConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linuxExecStepConfig':
          pulumi.Input.mapInputValue<
            ExecStepConfigResponse,
            Map<String, dynamic>
          >(linuxExecStepConfig, (value) => value.toMap()),
      'windowsExecStepConfig':
          pulumi.Input.mapInputValue<
            ExecStepConfigResponse,
            Map<String, dynamic>
          >(windowsExecStepConfig, (value) => value.toMap()),
    };
  }

  factory ExecStepResponse.fromMap(Map<String, dynamic> map) {
    return ExecStepResponse(
      linuxExecStepConfig: pulumi.Input.fromValue(
        ExecStepConfigResponse.fromMap(
          (map['linuxExecStepConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      windowsExecStepConfig: pulumi.Input.fromValue(
        ExecStepConfigResponse.fromMap(
          (map['windowsExecStepConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
