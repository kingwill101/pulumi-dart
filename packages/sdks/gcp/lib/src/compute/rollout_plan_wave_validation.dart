// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_wave_validation_time_based_validation_metadata.dart';

class RolloutPlanWaveValidation {
  /// Metadata required if type = "time".
  /// Structure is documented below.
  final pulumi.Input<RolloutPlanWaveValidationTimeBasedValidationMetadata?>? timeBasedValidationMetadata;
  /// The type of the validation. Possible values:
  /// "manual": The system waits for an end-user approval API before progressing to the next wave.
  /// "time": The system waits for a user specified duration before progressing to the next wave.
  final pulumi.Input<String> type;

  /// Creates a new [RolloutPlanWaveValidation].
  /// [timeBasedValidationMetadata] Metadata required if type = "time".
  /// [type] The type of the validation. Possible values:
  const RolloutPlanWaveValidation({
    this.timeBasedValidationMetadata,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeBasedValidationMetadata': ?pulumi.Input.mapOptionalInputValue<RolloutPlanWaveValidationTimeBasedValidationMetadata, Map<String, dynamic>>(timeBasedValidationMetadata, (value) => value.toMap()),
      'type': type,
    };
  }

  factory RolloutPlanWaveValidation.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveValidation(
      timeBasedValidationMetadata: (() { final guardedValue = map['timeBasedValidationMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RolloutPlanWaveValidationTimeBasedValidationMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
