// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutPlanWaveValidationTimeBasedValidationMetadata {
  /// The duration that the system waits in between waves. This wait starts
  /// after all changes in the wave are rolled out.
  final pulumi.Input<String?>? waitDuration;

  /// Creates a new [RolloutPlanWaveValidationTimeBasedValidationMetadata].
  /// [waitDuration] The duration that the system waits in between waves. This wait starts
  const RolloutPlanWaveValidationTimeBasedValidationMetadata({
    this.waitDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitDuration': ?waitDuration,
    };
  }

  factory RolloutPlanWaveValidationTimeBasedValidationMetadata.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveValidationTimeBasedValidationMetadata(
      waitDuration: (() { final guardedValue = map['waitDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
