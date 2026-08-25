// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `sendAgeIfZero` should be set `true` otherwise `0` value of `age` field will be ignored.
  final pulumi.Input<int?>? age;
  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  final pulumi.Input<String?>? createdBefore;
  /// A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  final pulumi.Input<String?>? customTimeBefore;
  /// Days since the date set in the `customTime` metadata for the object. This condition is satisfied when the current date and time is at least the specified number of days after the `customTime`. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `daysSinceCustomTime` condition.
  final pulumi.Input<int?>? daysSinceCustomTime;
  /// Relevant only for versioned objects. Number of days elapsed since the noncurrent timestamp of an object. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `daysSinceNoncurrentTime` condition.
  final pulumi.Input<int?>? daysSinceNoncurrentTime;
  /// One or more matching name prefixes to satisfy this condition.
  final pulumi.Input<List<String>?>? matchesPrefixes;
  /// [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  final pulumi.Input<List<String>?>? matchesStorageClasses;
  /// One or more matching name suffixes to satisfy this condition.
  final pulumi.Input<List<String>?>? matchesSuffixes;
  /// Relevant only for versioned objects. The date in RFC 3339 (e.g. `2017-06-13`) when the object became nonconcurrent. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `noncurrentTimeBefore` condition.
  final pulumi.Input<String?>? noncurrentTimeBefore;
  /// Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored and your state will treat it as though you supplied no `numNewerVersions` condition.
  final pulumi.Input<int?>? numNewerVersions;
  /// While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `sendAgeIfZero` field is having `false` value.
  final pulumi.Input<bool?>? sendAgeIfZero;
  /// While set true, `daysSinceCustomTime` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `daysSinceCustomTime` field. It can be used alone or together with `daysSinceCustomTime`.
  final pulumi.Input<bool?>? sendDaysSinceCustomTimeIfZero;
  /// While set true, `daysSinceNoncurrentTime` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `daysSinceNoncurrentTime` field. It can be used alone or together with `daysSinceNoncurrentTime`.
  final pulumi.Input<bool?>? sendDaysSinceNoncurrentTimeIfZero;
  /// While set true, `numNewerVersions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `numNewerVersions` field. It can be used alone or together with `numNewerVersions`.
  final pulumi.Input<bool?>? sendNumNewerVersionsIfZero;
  /// Objects having a size greater than this value in bytes will be matched.
  final pulumi.Input<int?>? sizeAboveBytes;
  /// Objects having a size smaller than this value in bytes will be matched.
  final pulumi.Input<int?>? sizeBelowBytes;
  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  final pulumi.Input<String?>? withState;

  /// Creates a new [BucketLifecycleRuleCondition].
  /// [age] Minimum age of an object in days to satisfy this condition. **Note** To set `0` value of `age`, `sendAgeIfZero` should be set `true` otherwise `0` value of `age` field will be ignored.
  /// [createdBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC.
  /// [customTimeBefore] A date in the RFC 3339 format YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition.
  /// [daysSinceCustomTime] Days since the date set in the `customTime` metadata for the object. This condition is satisfied when the current date and time is at least the specified number of days after the `customTime`. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `daysSinceCustomTime` condition.
  /// [daysSinceNoncurrentTime] Relevant only for versioned objects. Number of days elapsed since the noncurrent timestamp of an object. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `daysSinceNoncurrentTime` condition.
  /// [matchesPrefixes] One or more matching name prefixes to satisfy this condition.
  /// [matchesStorageClasses] [Storage Class](https://cloud.google.com/storage/docs/storage-classes) of objects to satisfy this condition. Supported values include: `STANDARD`, `MULTI_REGIONAL`, `REGIONAL`, `NEARLINE`, `COLDLINE`, `ARCHIVE`, `DURABLE_REDUCED_AVAILABILITY`.
  /// [matchesSuffixes] One or more matching name suffixes to satisfy this condition.
  /// [noncurrentTimeBefore] Relevant only for versioned objects. The date in RFC 3339 (e.g. `2017-06-13`) when the object became nonconcurrent. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored, and your state will treat it as though you supplied no `noncurrentTimeBefore` condition.
  /// [numNewerVersions] Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition. Due to a current bug you are unable to set this value to `0` within Terraform. When set to `0` it will be ignored and your state will treat it as though you supplied no `numNewerVersions` condition.
  /// [sendAgeIfZero] While set true, `age` value will be sent in the request even for zero value of the field. This field is only useful and required for setting 0 value to the `age` field. It can be used alone or together with `age` attribute. **NOTE** `age` attibute with `0` value will be ommitted from the API request if `sendAgeIfZero` field is having `false` value.
  /// [sendDaysSinceCustomTimeIfZero] While set true, `daysSinceCustomTime` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `daysSinceCustomTime` field. It can be used alone or together with `daysSinceCustomTime`.
  /// [sendDaysSinceNoncurrentTimeIfZero] While set true, `daysSinceNoncurrentTime` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `daysSinceNoncurrentTime` field. It can be used alone or together with `daysSinceNoncurrentTime`.
  /// [sendNumNewerVersionsIfZero] While set true, `numNewerVersions` value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the `numNewerVersions` field. It can be used alone or together with `numNewerVersions`.
  /// [sizeAboveBytes] Objects having a size greater than this value in bytes will be matched.
  /// [sizeBelowBytes] Objects having a size smaller than this value in bytes will be matched.
  /// [withState] Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: `"LIVE"`, `"ARCHIVED"`, `"ANY"`.
  const BucketLifecycleRuleCondition({
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
    this.sizeAboveBytes,
    this.sizeBelowBytes,
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
      'sizeAboveBytes': ?sizeAboveBytes,
      'sizeBelowBytes': ?sizeBelowBytes,
      'withState': ?withState,
    };
  }

  factory BucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRuleCondition(
      age: (() { final guardedValue = map['age']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customTimeBefore: (() { final guardedValue = map['customTimeBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daysSinceCustomTime: (() { final guardedValue = map['daysSinceCustomTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      daysSinceNoncurrentTime: (() { final guardedValue = map['daysSinceNoncurrentTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      matchesPrefixes: (() { final guardedValue = map['matchesPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchesStorageClasses: (() { final guardedValue = map['matchesStorageClasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchesSuffixes: (() { final guardedValue = map['matchesSuffixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      noncurrentTimeBefore: (() { final guardedValue = map['noncurrentTimeBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numNewerVersions: (() { final guardedValue = map['numNewerVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sendAgeIfZero: (() { final guardedValue = map['sendAgeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendDaysSinceCustomTimeIfZero: (() { final guardedValue = map['sendDaysSinceCustomTimeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendDaysSinceNoncurrentTimeIfZero: (() { final guardedValue = map['sendDaysSinceNoncurrentTimeIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendNumNewerVersionsIfZero: (() { final guardedValue = map['sendNumNewerVersionsIfZero']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sizeAboveBytes: (() { final guardedValue = map['sizeAboveBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sizeBelowBytes: (() { final guardedValue = map['sizeBelowBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      withState: (() { final guardedValue = map['withState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
