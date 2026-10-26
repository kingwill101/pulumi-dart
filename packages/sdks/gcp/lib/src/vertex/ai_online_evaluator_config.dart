// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_online_evaluator_config_random_sampling.dart';

class AiOnlineEvaluatorConfig {
  /// The maximum number of evaluations to perform per run. If set to 0, the
  /// number is unbounded.
  final pulumi.Input<String?>? maxEvaluatedSamplesPerRun;
  /// Configuration for random sampling. This is the sampling method used to
  /// select traces for evaluation.
  /// Structure is documented below.
  final pulumi.Input<AiOnlineEvaluatorConfigRandomSampling?>? randomSampling;

  /// Creates a new [AiOnlineEvaluatorConfig].
  /// [maxEvaluatedSamplesPerRun] The maximum number of evaluations to perform per run. If set to 0, the
  /// [randomSampling] Configuration for random sampling. This is the sampling method used to
  const AiOnlineEvaluatorConfig({
    this.maxEvaluatedSamplesPerRun,
    this.randomSampling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxEvaluatedSamplesPerRun': ?maxEvaluatedSamplesPerRun,
      'randomSampling': ?pulumi.Input.mapOptionalInputValue<AiOnlineEvaluatorConfigRandomSampling, Map<String, dynamic>>(randomSampling, (value) => value.toMap()),
    };
  }

  factory AiOnlineEvaluatorConfig.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorConfig(
      maxEvaluatedSamplesPerRun: (() { final guardedValue = map['maxEvaluatedSamplesPerRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      randomSampling: (() { final guardedValue = map['randomSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiOnlineEvaluatorConfigRandomSampling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
