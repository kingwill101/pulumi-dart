// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations {
  /// Transformation for each infoType. Cannot specify more than one for a given infoType.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation>> transformations_;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations].
  /// [transformations_] Transformation for each infoType. Cannot specify more than one for a given infoType.
  const PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations({
    required this.transformations_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transformations': pulumi.Input.mapInputValue<List<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation>, List<Map<String, dynamic>>>(transformations_, (value) => pulumi.Input.encodeList<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformations(
      transformations_: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation>(map['transformations']!, (value) => PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
