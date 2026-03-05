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
      earlyStop: (() { final guardedValue = map['earlyStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      l1Reg: (() { final guardedValue = map['l1Reg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      l2Reg: (() { final guardedValue = map['l2Reg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      learnRate: (() { final guardedValue = map['learnRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      learnRateStrategy: (() { final guardedValue = map['learnRateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lineSearchInitLearnRate: (() { final guardedValue = map['lineSearchInitLearnRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      maxIteration: (() { final guardedValue = map['maxIteration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minRelProgress: (() { final guardedValue = map['minRelProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      warmStart: (() { final guardedValue = map['warmStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

