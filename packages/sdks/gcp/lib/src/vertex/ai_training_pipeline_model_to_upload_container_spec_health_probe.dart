// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_model_to_upload_container_spec_health_probe_exec.dart';

class AiTrainingPipelineModelToUploadContainerSpecHealthProbe {
  /// ExecAction specifies a command to execute.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineModelToUploadContainerSpecHealthProbeExec?>? exec;
  /// How often (in seconds) to perform the probe.
  final pulumi.Input<int?>? periodSeconds;
  /// Number of seconds after which the probe times out.
  final pulumi.Input<int?>? timeoutSeconds;

  /// Creates a new [AiTrainingPipelineModelToUploadContainerSpecHealthProbe].
  /// [exec] ExecAction specifies a command to execute.
  /// [periodSeconds] How often (in seconds) to perform the probe.
  /// [timeoutSeconds] Number of seconds after which the probe times out.
  const AiTrainingPipelineModelToUploadContainerSpecHealthProbe({
    this.exec,
    this.periodSeconds,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineModelToUploadContainerSpecHealthProbeExec, Map<String, dynamic>>(exec, (value) => value.toMap()),
      'periodSeconds': ?periodSeconds,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AiTrainingPipelineModelToUploadContainerSpecHealthProbe.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineModelToUploadContainerSpecHealthProbe(
      exec: (() { final guardedValue = map['exec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineModelToUploadContainerSpecHealthProbeExec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
