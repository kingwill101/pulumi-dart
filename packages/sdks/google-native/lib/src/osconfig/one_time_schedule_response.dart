// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets the time for a one time patch deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
class OneTimeScheduleResponse {
  /// The desired patch job execution time.
  final pulumi.Input<String> executeTime;

  /// Creates a new [OneTimeScheduleResponse].
  /// [executeTime] The desired patch job execution time.
  OneTimeScheduleResponse({
    required this.executeTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeTime': executeTime,
    };
  }

  factory OneTimeScheduleResponse.fromMap(Map<String, dynamic> map) {
    return OneTimeScheduleResponse(
      executeTime: pulumi.Input.fromValue(map['executeTime'] as String),
    );
  }
}

