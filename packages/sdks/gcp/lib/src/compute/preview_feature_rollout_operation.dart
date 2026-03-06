// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preview_feature_rollout_operation_rollout_input.dart';

class PreviewFeatureRolloutOperation {
  /// The input for the rollout operation.
  /// Structure is documented below.
  final pulumi.Input<PreviewFeatureRolloutOperationRolloutInput>? rolloutInput;

  /// Creates a new [PreviewFeatureRolloutOperation].
  /// [rolloutInput] The input for the rollout operation.
  const PreviewFeatureRolloutOperation({
    this.rolloutInput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutInput': ?pulumi.Input.mapOptionalInputValue<PreviewFeatureRolloutOperationRolloutInput, Map<String, dynamic>>(rolloutInput, (value) => value.toMap()),
    };
  }

  factory PreviewFeatureRolloutOperation.fromMap(Map<String, dynamic> map) {
    return PreviewFeatureRolloutOperation(
      rolloutInput: (() { final guardedValue = map['rolloutInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreviewFeatureRolloutOperationRolloutInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

