// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_max_recurrence.dart';

class JobCollectionQuota {
  /// Gets or set the maximum job count.
  final pulumi.Input<int>? maxJobCount;
  /// Gets or sets the maximum job occurrence.
  final pulumi.Input<int>? maxJobOccurrence;
  /// Gets or set the maximum recurrence.
  final pulumi.Input<JobMaxRecurrence>? maxRecurrence;

  /// Creates a new [JobCollectionQuota].
  /// [maxJobCount] Gets or set the maximum job count.
  /// [maxJobOccurrence] Gets or sets the maximum job occurrence.
  /// [maxRecurrence] Gets or set the maximum recurrence.
  JobCollectionQuota({
    this.maxJobCount,
    this.maxJobOccurrence,
    this.maxRecurrence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxJobCount': ?maxJobCount,
      'maxJobOccurrence': ?maxJobOccurrence,
      'maxRecurrence': ?pulumi.Input.mapOptionalInputValue<JobMaxRecurrence, Map<String, dynamic>>(maxRecurrence, (value) => value.toMap()),
    };
  }

  factory JobCollectionQuota.fromMap(Map<String, dynamic> map) {
    return JobCollectionQuota(
      maxJobCount: map['maxJobCount'] == null ? null : (map['maxJobCount'] as int).input(),
      maxJobOccurrence: map['maxJobOccurrence'] == null ? null : (map['maxJobOccurrence'] as int).input(),
      maxRecurrence: map['maxRecurrence'] == null ? null : (JobMaxRecurrence.fromMap((map['maxRecurrence'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

