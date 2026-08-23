// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CutoverForecast holds information about future CutoverJobs of a MigratingVm.
class CutoverForecastResponse {
  /// Estimation of the CutoverJob duration.
  final pulumi.Input<String> estimatedCutoverJobDuration;

  /// Creates a new [CutoverForecastResponse].
  /// [estimatedCutoverJobDuration] Estimation of the CutoverJob duration.
  const CutoverForecastResponse({
    required this.estimatedCutoverJobDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedCutoverJobDuration': estimatedCutoverJobDuration,
    };
  }

  factory CutoverForecastResponse.fromMap(Map<String, dynamic> map) {
    return CutoverForecastResponse(
      estimatedCutoverJobDuration: pulumi.Input.fromValue(map['estimatedCutoverJobDuration'] as String),
    );
  }
}
