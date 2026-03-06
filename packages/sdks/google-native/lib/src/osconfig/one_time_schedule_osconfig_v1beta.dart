// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeScheduleOsconfigV1beta {
  /// The desired patch job execution time.
  final pulumi.Input<String> executeTime;

  /// Creates a new [OneTimeScheduleOsconfigV1beta].
  /// [executeTime] The desired patch job execution time.
  const OneTimeScheduleOsconfigV1beta({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': executeTime,
    };
  }

  factory OneTimeScheduleOsconfigV1beta.fromMap(Map<String, dynamic> map) {
    return OneTimeScheduleOsconfigV1beta(
      executeTime: pulumi.Input.fromValue(map['executeTime'] as String),
    );
  }
}

