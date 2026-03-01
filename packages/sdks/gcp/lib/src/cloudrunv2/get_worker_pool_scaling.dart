// ignore_for_file: unused_element, unnecessary_cast


class GetWorkerPoolScaling {
  /// The total number of instances in manual scaling mode.
  final int manualInstanceCount;
  /// The maximum count of instances distributed among revisions based on the specified instance split percentages.
  final int maxInstanceCount;
  /// The minimum count of instances distributed among revisions based on the specified instance split percentages.
  final int minInstanceCount;
  /// The scaling mode for the worker pool. It defaults to MANUAL. Possible values: ["AUTOMATIC", "MANUAL"]
  final String scalingMode;

  /// Creates a new [GetWorkerPoolScaling].
  /// [manualInstanceCount] The total number of instances in manual scaling mode.
  /// [maxInstanceCount] The maximum count of instances distributed among revisions based on the specified instance split percentages.
  /// [minInstanceCount] The minimum count of instances distributed among revisions based on the specified instance split percentages.
  /// [scalingMode] The scaling mode for the worker pool. It defaults to MANUAL. Possible values: ["AUTOMATIC", "MANUAL"]
  GetWorkerPoolScaling({
    required this.manualInstanceCount,
    required this.maxInstanceCount,
    required this.minInstanceCount,
    required this.scalingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manualInstanceCount': manualInstanceCount,
      'maxInstanceCount': maxInstanceCount,
      'minInstanceCount': minInstanceCount,
      'scalingMode': scalingMode,
    };
  }

  factory GetWorkerPoolScaling.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolScaling(
      manualInstanceCount: map['manualInstanceCount'] as int,
      maxInstanceCount: map['maxInstanceCount'] as int,
      minInstanceCount: map['minInstanceCount'] as int,
      scalingMode: map['scalingMode'] as String,
    );
  }
}

