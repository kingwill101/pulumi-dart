// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The time of day.
class TimeResponse {
  /// The hour element of the time. Allowed values range from 0 (start of the selected day) to 24 (end of the selected day). Hour value 24 cannot be combined with any other minute value but 0.
  final pulumi.Input<int> hour;
  /// The minute element of the time. Allowed values are 0 and 30. If not specified, its value defaults to 0.
  final pulumi.Input<double>? minute;

  /// Creates a new [TimeResponse].
  /// [hour] The hour element of the time. Allowed values range from 0 (start of the selected day) to 24 (end of the selected day). Hour value 24 cannot be combined with any other minute value but 0.
  /// [minute] The minute element of the time. Allowed values are 0 and 30. If not specified, its value defaults to 0.
  TimeResponse({
    required this.hour,
    this.minute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hour': hour,
      'minute': ?minute,
    };
  }

  factory TimeResponse.fromMap(Map<String, dynamic> map) {
    return TimeResponse(
      hour: (map['hour'] as int).input(),
      minute: map['minute'] == null ? null : (map['minute'] as double).input(),
    );
  }
}

