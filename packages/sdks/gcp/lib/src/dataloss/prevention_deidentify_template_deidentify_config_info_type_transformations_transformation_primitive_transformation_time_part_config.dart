// ignore_for_file: unused_element, unnecessary_cast


class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig {
  /// The part of the time to keep.
  /// Possible values are: `YEAR`, `MONTH`, `DAY_OF_MONTH`, `DAY_OF_WEEK`, `WEEK_OF_YEAR`, `HOUR_OF_DAY`.
  final String? partToExtract;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig].
  /// [partToExtract] The part of the time to keep.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig({
    this.partToExtract,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partToExtract': ?partToExtract,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig(
      partToExtract: map['partToExtract'] == null ? null : map['partToExtract'] as String,
    );
  }
}

