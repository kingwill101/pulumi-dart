// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_wave_orchestration_options.dart';
import 'rollout_plan_wave_selector.dart';
import 'rollout_plan_wave_validation.dart';

class RolloutPlanWave {
  /// The display name of this wave of the rollout plan.
  final pulumi.Input<String?>? displayName;
  /// (Output)
  /// The wave number.
  final pulumi.Input<int?>? number;
  /// Options to control the pace of orchestration of a wave.
  /// Structure is documented below.
  final pulumi.Input<RolloutPlanWaveOrchestrationOptions?>? orchestrationOptions;
  /// The selectors for this wave. There is a logical AND between each selector
  /// defined in a wave, so a resource must satisfy the criteria of *all* the
  /// specified selectors to be in scope for the wave.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutPlanWaveSelector>> selectors;
  /// The validation to be performed before progressing to the next wave.
  /// Structure is documented below.
  final pulumi.Input<RolloutPlanWaveValidation> validation;

  /// Creates a new [RolloutPlanWave].
  /// [displayName] The display name of this wave of the rollout plan.
  /// [number] (Output)
  /// [orchestrationOptions] Options to control the pace of orchestration of a wave.
  /// [selectors] The selectors for this wave. There is a logical AND between each selector
  /// [validation] The validation to be performed before progressing to the next wave.
  const RolloutPlanWave({
    this.displayName,
    this.number,
    this.orchestrationOptions,
    required this.selectors,
    required this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'number': ?number,
      'orchestrationOptions': ?pulumi.Input.mapOptionalInputValue<RolloutPlanWaveOrchestrationOptions, Map<String, dynamic>>(orchestrationOptions, (value) => value.toMap()),
      'selectors': pulumi.Input.mapInputValue<List<RolloutPlanWaveSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<RolloutPlanWaveSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validation': pulumi.Input.mapInputValue<RolloutPlanWaveValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory RolloutPlanWave.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWave(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      number: (() { final guardedValue = map['number']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      orchestrationOptions: (() { final guardedValue = map['orchestrationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutPlanWaveOrchestrationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutPlanWaveSelector>(map['selectors']!, (value) => RolloutPlanWaveSelector.fromMap((value as Map).cast<String, dynamic>()))),
      validation: pulumi.Input.fromValue(RolloutPlanWaveValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())),
    );
  }
}
