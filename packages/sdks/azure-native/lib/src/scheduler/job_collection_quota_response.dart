// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_max_recurrence_response.dart';

class JobCollectionQuotaResponse {
  /// Gets or set the maximum job count.
  final pulumi.Input<int>? maxJobCount;

  /// Gets or sets the maximum job occurrence.
  final pulumi.Input<int>? maxJobOccurrence;

  /// Gets or set the maximum recurrence.
  final pulumi.Input<JobMaxRecurrenceResponse>? maxRecurrence;

  /// Creates a new [JobCollectionQuotaResponse].
  /// [maxJobCount] Gets or set the maximum job count.
  /// [maxJobOccurrence] Gets or sets the maximum job occurrence.
  /// [maxRecurrence] Gets or set the maximum recurrence.
  JobCollectionQuotaResponse({
    this.maxJobCount,
    this.maxJobOccurrence,
    this.maxRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxJobCount': ?maxJobCount,
      'maxJobOccurrence': ?maxJobOccurrence,
      'maxRecurrence':
          ?pulumi.Input.mapOptionalInputValue<
            JobMaxRecurrenceResponse,
            Map<String, dynamic>
          >(maxRecurrence, (value) => value.toMap()),
    };
  }

  factory JobCollectionQuotaResponse.fromMap(Map<String, dynamic> map) {
    return JobCollectionQuotaResponse(
      maxJobCount: (() {
        final guardedValue = map['maxJobCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxJobOccurrence: (() {
        final guardedValue = map['maxJobOccurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxRecurrence: (() {
        final guardedValue = map['maxRecurrence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobMaxRecurrenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
