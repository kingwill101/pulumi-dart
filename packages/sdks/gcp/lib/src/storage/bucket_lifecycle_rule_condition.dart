// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `send_age_if_zero` should be set `true` otherwise `0` value of `age` field will be ignored.
  final pulumi.Input<int>? age;
  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  final pulumi.Input<String>? createdBefore;
  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  final pulumi.Input<String>? customTimeBefore;
  /// Number of days elapsed since the user-specified timestamp set on an object.
  final pulumi.Input<int>? daysSinceCustomTime;
  /// Number of days elapsed since the noncurrent timestamp of an object. This
  /// condition is relevant only for versioned objects.
  final pulumi.Input<int>? daysSinceNoncurrentTime;
  /// One or more matching name prefixes to satisfy this condition.
  final pulumi.Input<List<String>>? matchesPrefixes;
  /// [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  final pulumi.Input<List<String>>? matchesStorageClasses;
  /// One or more matching name suffixes to satisfy this condition.
  final pulumi.Input<List<String>>? matchesSuffixes;
  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final pulumi.Input<String>? noncurrentTimeBefore;
  /// Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  final pulumi.Input<int>? numNewerVersions;
  /// While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `send_age_if_zero` field is having `false` value.
  final pulumi.Input<bool>? sendAgeIfZero;
  /// While set true, `days_since_custom_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_custom_time` field. It can be used alone or together with `days_since_custom_time`.
  final pulumi.Input<bool>? sendDaysSinceCustomTimeIfZero;
  /// While set true, `days_since_noncurrent_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_noncurrent_time` field. It can be used alone or together with `days_since_noncurrent_time`.
  final pulumi.Input<bool>? sendDaysSinceNoncurrentTimeIfZero;
  /// While set true, `num_newer_versions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `num_newer_versions` field. It can be used alone or together with `num_newer_versions`.
  final pulumi.Input<bool>? sendNumNewerVersionsIfZero;
  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  final pulumi.Input<String>? withState;

  /// Creates a new [BucketLifecycleRuleCondition].
  /// [age] Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `send_age_if_zero` should be set `true` otherwise `0` value of `age` field will be ignored.
  /// [createdBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  /// [customTimeBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  /// [daysSinceCustomTime] Number of days elapsed since the user-specified timestamp set on an object.
  /// [daysSinceNoncurrentTime] Number of days elapsed since the noncurrent timestamp of an object. This
  /// [matchesPrefixes] One or more matching name prefixes to satisfy this condition.
  /// [matchesStorageClasses] [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  /// [matchesSuffixes] One or more matching name suffixes to satisfy this condition.
  /// [noncurrentTimeBefore] Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  /// [numNewerVersions] Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  /// [sendAgeIfZero] While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `send_age_if_zero` field is having `false` value.
  /// [sendDaysSinceCustomTimeIfZero] While set true, `days_since_custom_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_custom_time` field. It can be used alone or together with `days_since_custom_time`.
  /// [sendDaysSinceNoncurrentTimeIfZero] While set true, `days_since_noncurrent_time` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `days_since_noncurrent_time` field. It can be used alone or together with `days_since_noncurrent_time`.
  /// [sendNumNewerVersionsIfZero] While set true, `num_newer_versions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `num_newer_versions` field. It can be used alone or together with `num_newer_versions`.
  /// [withState] Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  BucketLifecycleRuleCondition({
    this.age,
    this.createdBefore,
    this.customTimeBefore,
    this.daysSinceCustomTime,
    this.daysSinceNoncurrentTime,
    this.matchesPrefixes,
    this.matchesStorageClasses,
    this.matchesSuffixes,
    this.noncurrentTimeBefore,
    this.numNewerVersions,
    this.sendAgeIfZero,
    this.sendDaysSinceCustomTimeIfZero,
    this.sendDaysSinceNoncurrentTimeIfZero,
    this.sendNumNewerVersionsIfZero,
    this.withState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': ?age,
      'createdBefore': ?createdBefore,
      'customTimeBefore': ?customTimeBefore,
      'daysSinceCustomTime': ?daysSinceCustomTime,
      'daysSinceNoncurrentTime': ?daysSinceNoncurrentTime,
      'matchesPrefixes': ?matchesPrefixes,
      'matchesStorageClasses': ?matchesStorageClasses,
      'matchesSuffixes': ?matchesSuffixes,
      'noncurrentTimeBefore': ?noncurrentTimeBefore,
      'numNewerVersions': ?numNewerVersions,
      'sendAgeIfZero': ?sendAgeIfZero,
      'sendDaysSinceCustomTimeIfZero': ?sendDaysSinceCustomTimeIfZero,
      'sendDaysSinceNoncurrentTimeIfZero': ?sendDaysSinceNoncurrentTimeIfZero,
      'sendNumNewerVersionsIfZero': ?sendNumNewerVersionsIfZero,
      'withState': ?withState,
    };
  }

  factory BucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleCondition(
      age: (() { final guardedValue = map['age']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customTimeBefore: (() { final guardedValue = map['customTimeBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysSinceCustomTime: (() { final guardedValue = map['daysSinceCustomTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      daysSinceNoncurrentTime: (() { final guardedValue = map['daysSinceNoncurrentTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      matchesPrefixes: (() { final guardedValue = map['matchesPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchesStorageClasses: (() { final guardedValue = map['matchesStorageClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchesSuffixes: (() { final guardedValue = map['matchesSuffixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      noncurrentTimeBefore: (() { final guardedValue = map['noncurrentTimeBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numNewerVersions: (() { final guardedValue = map['numNewerVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sendAgeIfZero: (() { final guardedValue = map['sendAgeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendDaysSinceCustomTimeIfZero: (() { final guardedValue = map['sendDaysSinceCustomTimeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendDaysSinceNoncurrentTimeIfZero: (() { final guardedValue = map['sendDaysSinceNoncurrentTimeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendNumNewerVersionsIfZero: (() { final guardedValue = map['sendNumNewerVersionsIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      withState: (() { final guardedValue = map['withState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

