// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

/// Testing timing break down to know phases.
class TestTiming {
  /// How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  final pulumi.Input<Duration>? testProcessDuration;

  /// Creates a new [TestTiming].
  /// [testProcessDuration] How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  TestTiming({
    this.testProcessDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testProcessDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(testProcessDuration, (value) => value.toMap()),
    };
  }

  factory TestTiming.fromMap(Map<String, dynamic> map) {
    return TestTiming(
      testProcessDuration: map['testProcessDuration'] == null ? null : (Duration.fromMap((map['testProcessDuration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

