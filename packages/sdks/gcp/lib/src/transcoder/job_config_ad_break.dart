// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobConfigAdBreak {
  /// Start time in seconds for the ad break, relative to the output file timeline
  final pulumi.Input<String>? startTimeOffset;

  /// Creates a new [JobConfigAdBreak].
  /// [startTimeOffset] Start time in seconds for the ad break, relative to the output file timeline
  const JobConfigAdBreak({
    this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeOffset': ?startTimeOffset,
    };
  }

  factory JobConfigAdBreak.fromMap(Map<String, dynamic> map) {
    return JobConfigAdBreak(
      startTimeOffset: (() { final guardedValue = map['startTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
