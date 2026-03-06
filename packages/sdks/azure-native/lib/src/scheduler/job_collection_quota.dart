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
  const JobCollectionQuota({
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
      maxJobCount: (() { final guardedValue = map['maxJobCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxJobOccurrence: (() { final guardedValue = map['maxJobOccurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRecurrence: (() { final guardedValue = map['maxRecurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobMaxRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

