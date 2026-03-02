// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_schedule_response.dart';

/// What event needs to occur for a new job to be started.
class GooglePrivacyDlpV2TriggerResponse {
  /// For use with hybrid jobs. Jobs must be manually created and finished.
  final pulumi.Input<Map<String, dynamic>> manual;
  /// Create a job on a repeating basis based on the elapse of time.
  final pulumi.Input<GooglePrivacyDlpV2ScheduleResponse> schedule;

  /// Creates a new [GooglePrivacyDlpV2TriggerResponse].
  /// [manual] For use with hybrid jobs. Jobs must be manually created and finished.
  /// [schedule] Create a job on a repeating basis based on the elapse of time.
  GooglePrivacyDlpV2TriggerResponse({
    required this.manual,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': manual,
      'schedule': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ScheduleResponse, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2TriggerResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2TriggerResponse(
      manual: ((map['manual'] as Map).cast<String, dynamic>()).input(),
      schedule: (GooglePrivacyDlpV2ScheduleResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

