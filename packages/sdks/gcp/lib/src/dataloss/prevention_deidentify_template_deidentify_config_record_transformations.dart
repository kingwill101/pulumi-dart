// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations {
  /// Transform the record by applying various field transformations.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation>>? fieldTransformations;
  /// Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression>>? recordSuppressions;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations].
  /// [fieldTransformations] Transform the record by applying various field transformations.
  /// [recordSuppressions] Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations({
    this.fieldTransformations,
    this.recordSuppressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldTransformations': ?pulumi.Input.mapOptionalInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation>, List<Map<String, dynamic>>>(fieldTransformations, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recordSuppressions': ?pulumi.Input.mapOptionalInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression>, List<Map<String, dynamic>>>(recordSuppressions, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformations(
      fieldTransformations: (() { final guardedValue = map['fieldTransformations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation>(guardedValue, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recordSuppressions: (() { final guardedValue = map['recordSuppressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression>(guardedValue, (value) => PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
