// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound_date_value.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound_time_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  /// A boolean value.
  final bool? booleanValue;
  /// Represents a whole or partial calendar date.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDateValue? dateValue;
  /// Represents a day of the week.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String? dayOfWeekValue;
  /// A float value.
  final double? floatValue;
  /// An integer value (int64 format)
  final String? integerValue;
  /// A string value.
  final String? stringValue;
  /// Represents a time of day.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBoundTimeValue? timeValue;
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? timestampValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound].
  /// [booleanValue] A boolean value.
  /// [dateValue] Represents a whole or partial calendar date.
  /// [dayOfWeekValue] Represents a day of the week.
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  /// [stringValue] A string value.
  /// [timeValue] Represents a time of day.
  /// [timestampValue] A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.booleanValue,
    this.dateValue,
    this.dayOfWeekValue,
    this.floatValue,
    this.integerValue,
    this.stringValue,
    this.timeValue,
    this.timestampValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanValue': ?booleanValue,
      'dateValue': ?dateValue == null ? null : dateValue!.toMap(),
      'dayOfWeekValue': ?dayOfWeekValue,
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timeValue': ?timeValue == null ? null : timeValue!.toMap(),
      'timestampValue': ?timestampValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound(
      booleanValue: map['booleanValue'] == null ? null : map['booleanValue'] as bool,
      dateValue: map['dateValue'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBoundDateValue.fromMap((map['dateValue'] as Map).cast<String, dynamic>()),
      dayOfWeekValue: map['dayOfWeekValue'] == null ? null : map['dayOfWeekValue'] as String,
      floatValue: map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue: map['integerValue'] == null ? null : map['integerValue'] as String,
      stringValue: map['stringValue'] == null ? null : map['stringValue'] as String,
      timeValue: map['timeValue'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBoundTimeValue.fromMap((map['timeValue'] as Map).cast<String, dynamic>()),
      timestampValue: map['timestampValue'] == null ? null : map['timestampValue'] as String,
    );
  }
}

