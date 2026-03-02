// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// Testing timing break down to know phases.
class TestTimingResponse {
  /// How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  final pulumi.Input<DurationResponse> testProcessDuration;

  /// Creates a new [TestTimingResponse].
  /// [testProcessDuration] How long it took to run the test process. - In response: present if previously set. - In create/update request: optional
  TestTimingResponse({
    required this.testProcessDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'testProcessDuration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(testProcessDuration, (value) => value.toMap()),
    };
  }

  factory TestTimingResponse.fromMap(Map<String, dynamic> map) {
    return TestTimingResponse(
      testProcessDuration: (DurationResponse.fromMap((map['testProcessDuration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

