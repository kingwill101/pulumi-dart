// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RetrohuntProcessInterval {
  /// Exclusive end of the interval.
  final pulumi.Input<String> endTime;
  /// Inclusive start of the interval.
  final pulumi.Input<String> startTime;

  /// Creates a new [RetrohuntProcessInterval].
  /// [endTime] Exclusive end of the interval.
  /// [startTime] Inclusive start of the interval.
  const RetrohuntProcessInterval({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory RetrohuntProcessInterval.fromMap(Map<String, dynamic> map) {
    return RetrohuntProcessInterval(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

