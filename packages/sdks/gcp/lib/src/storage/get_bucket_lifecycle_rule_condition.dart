// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketLifecycleRuleCondition {
  /// Minimum age of an object in days to satisfy this condition.
  final pulumi.Input<int> age;
  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final pulumi.Input<String> createdBefore;
  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final pulumi.Input<String> customTimeBefore;
  /// Number of days elapsed since the user-specified timestamp set on an object.
  final pulumi.Input<int> daysSinceCustomTime;
  /// Number of days elapsed since the noncurrent timestamp of an object. This
  /// condition is relevant only for versioned objects.
  final pulumi.Input<int> daysSinceNoncurrentTime;
  /// One or more matching name prefixes to satisfy this condition.
  final pulumi.Input<List<String>> matchesPrefixes;
  /// Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY.
  final pulumi.Input<List<String>> matchesStorageClasses;
  /// One or more matching name suffixes to satisfy this condition.
  final pulumi.Input<List<String>> matchesSuffixes;
  /// Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  final pulumi.Input<String> noncurrentTimeBefore;
  /// Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  final pulumi.Input<int> numNewerVersions;
  /// While set true, age value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the age field. It can be used alone or together with age.
  final pulumi.Input<bool> sendAgeIfZero;
  /// While set true, days_since_custom_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_custom_time field. It can be used alone or together with days_since_custom_time.
  final pulumi.Input<bool> sendDaysSinceCustomTimeIfZero;
  /// While set true, days_since_noncurrent_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_noncurrent_time field. It can be used alone or together with days_since_noncurrent_time.
  final pulumi.Input<bool> sendDaysSinceNoncurrentTimeIfZero;
  /// While set true, num_newer_versions value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the num_newer_versions field. It can be used alone or together with num_newer_versions.
  final pulumi.Input<bool> sendNumNewerVersionsIfZero;
  /// Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: "LIVE", "ARCHIVED", "ANY".
  final pulumi.Input<String> withState;

  /// Creates a new [GetBucketLifecycleRuleCondition].
  /// [age] Minimum age of an object in days to satisfy this condition.
  /// [createdBefore] Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  /// [customTimeBefore] Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  /// [daysSinceCustomTime] Number of days elapsed since the user-specified timestamp set on an object.
  /// [daysSinceNoncurrentTime] Number of days elapsed since the noncurrent timestamp of an object. This
  /// [matchesPrefixes] One or more matching name prefixes to satisfy this condition.
  /// [matchesStorageClasses] Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY.
  /// [matchesSuffixes] One or more matching name suffixes to satisfy this condition.
  /// [noncurrentTimeBefore] Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.
  /// [numNewerVersions] Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.
  /// [sendAgeIfZero] While set true, age value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the age field. It can be used alone or together with age.
  /// [sendDaysSinceCustomTimeIfZero] While set true, days_since_custom_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_custom_time field. It can be used alone or together with days_since_custom_time.
  /// [sendDaysSinceNoncurrentTimeIfZero] While set true, days_since_noncurrent_time value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the days_since_noncurrent_time field. It can be used alone or together with days_since_noncurrent_time.
  /// [sendNumNewerVersionsIfZero] While set true, num_newer_versions value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the num_newer_versions field. It can be used alone or together with num_newer_versions.
  /// [withState] Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: "LIVE", "ARCHIVED", "ANY".
  GetBucketLifecycleRuleCondition({
    required this.age,
    required this.createdBefore,
    required this.customTimeBefore,
    required this.daysSinceCustomTime,
    required this.daysSinceNoncurrentTime,
    required this.matchesPrefixes,
    required this.matchesStorageClasses,
    required this.matchesSuffixes,
    required this.noncurrentTimeBefore,
    required this.numNewerVersions,
    required this.sendAgeIfZero,
    required this.sendDaysSinceCustomTimeIfZero,
    required this.sendDaysSinceNoncurrentTimeIfZero,
    required this.sendNumNewerVersionsIfZero,
    required this.withState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age,
      'createdBefore': createdBefore,
      'customTimeBefore': customTimeBefore,
      'daysSinceCustomTime': daysSinceCustomTime,
      'daysSinceNoncurrentTime': daysSinceNoncurrentTime,
      'matchesPrefixes': matchesPrefixes,
      'matchesStorageClasses': matchesStorageClasses,
      'matchesSuffixes': matchesSuffixes,
      'noncurrentTimeBefore': noncurrentTimeBefore,
      'numNewerVersions': numNewerVersions,
      'sendAgeIfZero': sendAgeIfZero,
      'sendDaysSinceCustomTimeIfZero': sendDaysSinceCustomTimeIfZero,
      'sendDaysSinceNoncurrentTimeIfZero': sendDaysSinceNoncurrentTimeIfZero,
      'sendNumNewerVersionsIfZero': sendNumNewerVersionsIfZero,
      'withState': withState,
    };
  }

  factory GetBucketLifecycleRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetBucketLifecycleRuleCondition(
      age: (map['age'] as int).input(),
      createdBefore: (map['createdBefore'] as String).input(),
      customTimeBefore: (map['customTimeBefore'] as String).input(),
      daysSinceCustomTime: (map['daysSinceCustomTime'] as int).input(),
      daysSinceNoncurrentTime: (map['daysSinceNoncurrentTime'] as int).input(),
      matchesPrefixes: ((map['matchesPrefixes'] as List).cast<String>()).input(),
      matchesStorageClasses: ((map['matchesStorageClasses'] as List).cast<String>()).input(),
      matchesSuffixes: ((map['matchesSuffixes'] as List).cast<String>()).input(),
      noncurrentTimeBefore: (map['noncurrentTimeBefore'] as String).input(),
      numNewerVersions: (map['numNewerVersions'] as int).input(),
      sendAgeIfZero: (map['sendAgeIfZero'] as bool).input(),
      sendDaysSinceCustomTimeIfZero: (map['sendDaysSinceCustomTimeIfZero'] as bool).input(),
      sendDaysSinceNoncurrentTimeIfZero: (map['sendDaysSinceNoncurrentTimeIfZero'] as bool).input(),
      sendNumNewerVersionsIfZero: (map['sendNumNewerVersionsIfZero'] as bool).input(),
      withState: (map['withState'] as String).input(),
    );
  }
}

