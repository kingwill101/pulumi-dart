// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SynchronizationJobSchedule {
  /// Date and time when this job will expire, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  final pulumi.Input<String>? expiration;
  /// The interval between synchronization iterations ISO8601. E.g. PT40M run every 40 minutes.
  final pulumi.Input<String>? interval;
  /// State of the job.
  final pulumi.Input<String>? state;

  /// Creates a new [SynchronizationJobSchedule].
  /// [expiration] Date and time when this job will expire, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  /// [interval] The interval between synchronization iterations ISO8601. E.g. PT40M run every 40 minutes.
  /// [state] State of the job.
  SynchronizationJobSchedule({
    this.expiration,
    this.interval,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration,
      'interval': ?interval,
      'state': ?state,
    };
  }

  factory SynchronizationJobSchedule.fromMap(Map<String, dynamic> map) {
    return SynchronizationJobSchedule(
      expiration: map['expiration'] == null ? null : (map['expiration'] as String).input(),
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

