// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time-based Constraint for Study
class GoogleCloudAiplatformV1StudyTimeConstraintResponse {
  /// Compares the wallclock time to this time. Must use UTC timezone.
  final pulumi.Input<String> endTime;
  /// Counts the wallclock time passed since the creation of this Study.
  final pulumi.Input<String> maxDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudyTimeConstraintResponse].
  /// [endTime] Compares the wallclock time to this time. Must use UTC timezone.
  /// [maxDuration] Counts the wallclock time passed since the creation of this Study.
  const GoogleCloudAiplatformV1StudyTimeConstraintResponse({
    required this.endTime,
    required this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'maxDuration': maxDuration,
    };
  }

  factory GoogleCloudAiplatformV1StudyTimeConstraintResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudyTimeConstraintResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      maxDuration: pulumi.Input.fromValue(map['maxDuration'] as String),
    );
  }
}
