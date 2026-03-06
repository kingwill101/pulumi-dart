// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'individual_outcome_response.dart';

/// Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.
class PrimaryStepResponse {
  /// Step Id and outcome of each individual step.
  final pulumi.Input<List<IndividualOutcomeResponse>> individualOutcome;
  /// Rollup test status of multiple steps that were run with the same configuration as a group.
  final pulumi.Input<String> rollUp;

  /// Creates a new [PrimaryStepResponse].
  /// [individualOutcome] Step Id and outcome of each individual step.
  /// [rollUp] Rollup test status of multiple steps that were run with the same configuration as a group.
  const PrimaryStepResponse({
    required this.individualOutcome,
    required this.rollUp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'individualOutcome': pulumi.Input.mapInputValue<List<IndividualOutcomeResponse>, List<Map<String, dynamic>>>(individualOutcome, (value) => pulumi.Input.encodeList<IndividualOutcomeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollUp': rollUp,
    };
  }

  factory PrimaryStepResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryStepResponse(
      individualOutcome: pulumi.Input.fromValue(pulumi.Input.decodeList<IndividualOutcomeResponse>(map['individualOutcome']!, (value) => IndividualOutcomeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rollUp: pulumi.Input.fromValue(map['rollUp'] as String),
    );
  }
}

