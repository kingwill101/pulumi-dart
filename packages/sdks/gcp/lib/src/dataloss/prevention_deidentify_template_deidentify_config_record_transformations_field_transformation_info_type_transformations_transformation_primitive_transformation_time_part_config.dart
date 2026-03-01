// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig {
  /// The part of the time to keep.
  /// Possible values are: `YEAR`, `MONTH`, `DAY_OF_MONTH`, `DAY_OF_WEEK`, `WEEK_OF_YEAR`, `HOUR_OF_DAY`.
  final String partToExtract;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig].
  /// [partToExtract] The part of the time to keep.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig({
    required this.partToExtract,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partToExtract': partToExtract,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig(
      partToExtract: map['partToExtract'] as String,
    );
  }
}

