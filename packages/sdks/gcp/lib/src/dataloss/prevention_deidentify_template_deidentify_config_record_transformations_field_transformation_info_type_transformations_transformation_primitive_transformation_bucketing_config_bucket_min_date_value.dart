// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMinDateValue {
  /// Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
  final int? day;
  /// Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  final int? month;
  /// Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  final int? year;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMinDateValue].
  /// [day] Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.
  /// [month] Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
  /// [year] Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMinDateValue({
    this.day,
    this.month,
    this.year,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'month': ?month,
      'year': ?year,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMinDateValue.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMinDateValue(
      day: map['day'] == null ? null : map['day'] as int,
      month: map['month'] == null ? null : map['month'] as int,
      year: map['year'] == null ? null : map['year'] as int,
    );
  }
}

