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
  BqmlTrainingRunTrainingOptionsResponse({
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
      earlyStop: (map['earlyStop'] as bool).input(),
      l1Reg: (map['l1Reg'] as double).input(),
      l2Reg: (map['l2Reg'] as double).input(),
      learnRate: (map['learnRate'] as double).input(),
      learnRateStrategy: (map['learnRateStrategy'] as String).input(),
      lineSearchInitLearnRate: (map['lineSearchInitLearnRate'] as double).input(),
      maxIteration: (map['maxIteration'] as String).input(),
      minRelProgress: (map['minRelProgress'] as double).input(),
      warmStart: (map['warmStart'] as bool).input(),
    );
  }
}

