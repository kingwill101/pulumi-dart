// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecastResponseVmmigrationV1alpha1 {
  /// Estimation of the CutoverJob duration.
  final pulumi.Input<String> estimatedCutoverJobDuration;

  /// Creates a new [CutoverForecastResponseVmmigrationV1alpha1].
  /// [estimatedCutoverJobDuration] Estimation of the CutoverJob duration.
  CutoverForecastResponseVmmigrationV1alpha1({
    required this.estimatedCutoverJobDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedCutoverJobDuration': estimatedCutoverJobDuration,
    };
  }

  factory CutoverForecastResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return CutoverForecastResponseVmmigrationV1alpha1(
      estimatedCutoverJobDuration: pulumi.Input.fromValue(map['estimatedCutoverJobDuration'] as String),
    );
  }
}

