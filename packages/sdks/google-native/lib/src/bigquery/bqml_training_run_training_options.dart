// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
class BqmlTrainingRunTrainingOptions {
  final pulumi.Input<bool>? earlyStop;
  final pulumi.Input<double>? l1Reg;
  final pulumi.Input<double>? l2Reg;
  final pulumi.Input<double>? learnRate;
  final pulumi.Input<String>? learnRateStrategy;
  final pulumi.Input<double>? lineSearchInitLearnRate;
  final pulumi.Input<String>? maxIteration;
  final pulumi.Input<double>? minRelProgress;
  final pulumi.Input<bool>? warmStart;

  /// Creates a new [BqmlTrainingRunTrainingOptions].
  /// [earlyStop] Optional.
  /// [l1Reg] Optional.
  /// [l2Reg] Optional.
  /// [learnRate] Optional.
  /// [learnRateStrategy] Optional.
  /// [lineSearchInitLearnRate] Optional.
  /// [maxIteration] Optional.
  /// [minRelProgress] Optional.
  /// [warmStart] Optional.
  BqmlTrainingRunTrainingOptions({
    this.earlyStop,
    this.l1Reg,
    this.l2Reg,
    this.learnRate,
    this.learnRateStrategy,
    this.lineSearchInitLearnRate,
    this.maxIteration,
    this.minRelProgress,
    this.warmStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earlyStop': ?earlyStop,
      'l1Reg': ?l1Reg,
      'l2Reg': ?l2Reg,
      'learnRate': ?learnRate,
      'learnRateStrategy': ?learnRateStrategy,
      'lineSearchInitLearnRate': ?lineSearchInitLearnRate,
      'maxIteration': ?maxIteration,
      'minRelProgress': ?minRelProgress,
      'warmStart': ?warmStart,
    };
  }

  factory BqmlTrainingRunTrainingOptions.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRunTrainingOptions(
      earlyStop: map['earlyStop'] == null ? null : (map['earlyStop'] as bool).input(),
      l1Reg: map['l1Reg'] == null ? null : (map['l1Reg'] as double).input(),
      l2Reg: map['l2Reg'] == null ? null : (map['l2Reg'] as double).input(),
      learnRate: map['learnRate'] == null ? null : (map['learnRate'] as double).input(),
      learnRateStrategy: map['learnRateStrategy'] == null ? null : (map['learnRateStrategy'] as String).input(),
      lineSearchInitLearnRate: map['lineSearchInitLearnRate'] == null ? null : (map['lineSearchInitLearnRate'] as double).input(),
      maxIteration: map['maxIteration'] == null ? null : (map['maxIteration'] as String).input(),
      minRelProgress: map['minRelProgress'] == null ? null : (map['minRelProgress'] as double).input(),
      warmStart: map['warmStart'] == null ? null : (map['warmStart'] as bool).input(),
    );
  }
}

