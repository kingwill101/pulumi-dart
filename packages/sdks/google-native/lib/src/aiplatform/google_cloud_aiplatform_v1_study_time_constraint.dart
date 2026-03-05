// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time-based Constraint for Study
class GoogleCloudAiplatformV1StudyTimeConstraint {
  /// Compares the wallclock time to this time. Must use UTC timezone.
  final pulumi.Input<String>? endTime;
  /// Counts the wallclock time passed since the creation of this Study.
  final pulumi.Input<String>? maxDuration;

  /// Creates a new [GoogleCloudAiplatformV1StudyTimeConstraint].
  /// [endTime] Compares the wallclock time to this time. Must use UTC timezone.
  /// [maxDuration] Counts the wallclock time passed since the creation of this Study.
  GoogleCloudAiplatformV1StudyTimeConstraint({
    this.endTime,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'maxDuration': ?maxDuration,
    };
  }

  factory GoogleCloudAiplatformV1StudyTimeConstraint.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudyTimeConstraint(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

