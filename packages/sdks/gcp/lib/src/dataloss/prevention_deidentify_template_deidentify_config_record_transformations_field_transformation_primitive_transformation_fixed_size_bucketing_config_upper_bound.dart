// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound_date_value.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound_time_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  /// A boolean value.
  final pulumi.Input<bool>? booleanValue;

  /// Represents a whole or partial calendar date.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue
  >?
  dateValue;

  /// Represents a day of the week.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String>? dayOfWeekValue;

  /// A float value.
  final pulumi.Input<double>? floatValue;

  /// An integer value (int64 format)
  final pulumi.Input<String>? integerValue;

  /// A string value.
  final pulumi.Input<String>? stringValue;

  /// Represents a time of day.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue
  >?
  timeValue;

  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? timestampValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound].
  /// [booleanValue] A boolean value.
  /// [dateValue] Represents a whole or partial calendar date.
  /// [dayOfWeekValue] Represents a day of the week.
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  /// [stringValue] A string value.
  /// [timeValue] Represents a time of day.
  /// [timestampValue] A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
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
      'dateValue':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue,
            Map<String, dynamic>
          >(dateValue, (value) => value.toMap()),
      'dayOfWeekValue': ?dayOfWeekValue,
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
      'stringValue': ?stringValue,
      'timeValue':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue,
            Map<String, dynamic>
          >(timeValue, (value) => value.toMap()),
      'timestampValue': ?timestampValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound(
      booleanValue: (() {
        final guardedValue = map['booleanValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dateValue: (() {
        final guardedValue = map['dateValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundDateValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dayOfWeekValue: (() {
        final guardedValue = map['dayOfWeekValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      floatValue: (() {
        final guardedValue = map['floatValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      integerValue: (() {
        final guardedValue = map['integerValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stringValue: (() {
        final guardedValue = map['stringValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeValue: (() {
        final guardedValue = map['timeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBoundTimeValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timestampValue: (() {
        final guardedValue = map['timestampValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
