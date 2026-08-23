// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationTimePartConfig {
  /// The part of the time to keep.
  /// Possible values are: `YEAR`, `MONTH`, `DAY_OF_MONTH`, `DAY_OF_WEEK`, `WEEK_OF_YEAR`, `HOUR_OF_DAY`.
  final pulumi.Input<String>? partToExtract;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationTimePartConfig].
  /// [partToExtract] The part of the time to keep.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationTimePartConfig({
    this.partToExtract,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partToExtract': ?partToExtract,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationTimePartConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationTimePartConfig(
      partToExtract: (() { final guardedValue = map['partToExtract']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
