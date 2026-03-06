// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
class BqmlTrainingRunTrainingOptionsResponse {
  final pulumi.Input<bool> earlyStop;
  final pulumi.Input<double> l1Reg;
  final pulumi.Input<double> l2Reg;
  final pulumi.Input<double> learnRate;
  final pulumi.Input<String> learnRateStrategy;
  final pulumi.Input<double> lineSearchInitLearnRate;
  final pulumi.Input<String> maxIteration;
  final pulumi.Input<double> minRelProgress;
  final pulumi.Input<bool> warmStart;

  /// Creates a new [BqmlTrainingRunTrainingOptionsResponse].
  /// [earlyStop] Required.
  /// [l1Reg] Required.
  /// [l2Reg] Required.
  /// [learnRate] Required.
  /// [learnRateStrategy] Required.
  /// [lineSearchInitLearnRate] Required.
  /// [maxIteration] Required.
  /// [minRelProgress] Required.
  /// [warmStart] Required.
  const BqmlTrainingRunTrainingOptionsResponse({
    required this.earlyStop,
    required this.l1Reg,
    required this.l2Reg,
    required this.learnRate,
    required this.learnRateStrategy,
    required this.lineSearchInitLearnRate,
    required this.maxIteration,
    required this.minRelProgress,
    required this.warmStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyStop': earlyStop,
      'l1Reg': l1Reg,
      'l2Reg': l2Reg,
      'learnRate': learnRate,
      'learnRateStrategy': learnRateStrategy,
      'lineSearchInitLearnRate': lineSearchInitLearnRate,
      'maxIteration': maxIteration,
      'minRelProgress': minRelProgress,
      'warmStart': warmStart,
    };
  }

  factory BqmlTrainingRunTrainingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRunTrainingOptionsResponse(
      earlyStop: pulumi.Input.fromValue(map['earlyStop'] as bool),
      l1Reg: pulumi.Input.fromValue(map['l1Reg'] as double),
      l2Reg: pulumi.Input.fromValue(map['l2Reg'] as double),
      learnRate: pulumi.Input.fromValue(map['learnRate'] as double),
      learnRateStrategy: pulumi.Input.fromValue(map['learnRateStrategy'] as String),
      lineSearchInitLearnRate: pulumi.Input.fromValue(map['lineSearchInitLearnRate'] as double),
      maxIteration: pulumi.Input.fromValue(map['maxIteration'] as String),
      minRelProgress: pulumi.Input.fromValue(map['minRelProgress'] as double),
      warmStart: pulumi.Input.fromValue(map['warmStart'] as bool),
    );
  }
}

