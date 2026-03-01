// ignore_for_file: unused_element, unnecessary_cast

import 'job_max_recurrence_response.dart';

class JobCollectionQuotaResponse {
  /// Gets or set the maximum job count.
  final int? maxJobCount;
  /// Gets or sets the maximum job occurrence.
  final int? maxJobOccurrence;
  /// Gets or set the maximum recurrence.
  final JobMaxRecurrenceResponse? maxRecurrence;

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
      'maxRecurrence': ?maxRecurrence == null ? null : maxRecurrence!.toMap(),
    };
  }

  factory JobCollectionQuotaResponse.fromMap(Map<String, dynamic> map) {
    return JobCollectionQuotaResponse(
      maxJobCount: map['maxJobCount'] == null ? null : map['maxJobCount'] as int,
      maxJobOccurrence: map['maxJobOccurrence'] == null ? null : map['maxJobOccurrence'] as int,
      maxRecurrence: map['maxRecurrence'] == null ? null : JobMaxRecurrenceResponse.fromMap((map['maxRecurrence'] as Map).cast<String, dynamic>()),
    );
  }
}

