// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_schedule.dart';

/// What event needs to occur for a new job to be started.
class GooglePrivacyDlpV2Trigger {
  /// For use with hybrid jobs. Jobs must be manually created and finished.
  final pulumi.Input<Map<String, dynamic>>? manual;
  /// Create a job on a repeating basis based on the elapse of time.
  final pulumi.Input<GooglePrivacyDlpV2Schedule>? schedule;

  /// Creates a new [GooglePrivacyDlpV2Trigger].
  /// [manual] For use with hybrid jobs. Jobs must be manually created and finished.
  /// [schedule] Create a job on a repeating basis based on the elapse of time.
  GooglePrivacyDlpV2Trigger({
    this.manual,
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual,
      'schedule': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Schedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2Trigger.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Trigger(
      manual: map['manual'] == null ? null : ((map['manual'] as Map).cast<String, dynamic>()).input(),
      schedule: map['schedule'] == null ? null : (GooglePrivacyDlpV2Schedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

