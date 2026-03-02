// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolScaling {
  /// The total number of instances in manual scaling mode.
  final pulumi.Input<int>? manualInstanceCount;
  /// The maximum count of instances distributed among revisions based on the specified instance split percentages.
  final pulumi.Input<int>? maxInstanceCount;
  /// The minimum count of instances distributed among revisions based on the specified instance split percentages.
  final pulumi.Input<int>? minInstanceCount;
  /// The scaling mode for the worker pool. It defaults to MANUAL.
  /// Possible values are: `AUTOMATIC`, `MANUAL`.
  final pulumi.Input<String>? scalingMode;

  /// Creates a new [WorkerPoolScaling].
  /// [manualInstanceCount] The total number of instances in manual scaling mode.
  /// [maxInstanceCount] The maximum count of instances distributed among revisions based on the specified instance split percentages.
  /// [minInstanceCount] The minimum count of instances distributed among revisions based on the specified instance split percentages.
  /// [scalingMode] The scaling mode for the worker pool. It defaults to MANUAL.
  WorkerPoolScaling({
    this.manualInstanceCount,
    this.maxInstanceCount,
    this.minInstanceCount,
    this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualInstanceCount': ?manualInstanceCount,
      'maxInstanceCount': ?maxInstanceCount,
      'minInstanceCount': ?minInstanceCount,
      'scalingMode': ?scalingMode,
    };
  }

  factory WorkerPoolScaling.fromMap(Map<String, dynamic> map) {
    return WorkerPoolScaling(
      manualInstanceCount: map['manualInstanceCount'] == null ? null : (map['manualInstanceCount'] as int).input(),
      maxInstanceCount: map['maxInstanceCount'] == null ? null : (map['maxInstanceCount'] as int).input(),
      minInstanceCount: map['minInstanceCount'] == null ? null : (map['minInstanceCount'] as int).input(),
      scalingMode: map['scalingMode'] == null ? null : (map['scalingMode'] as String).input(),
    );
  }
}

