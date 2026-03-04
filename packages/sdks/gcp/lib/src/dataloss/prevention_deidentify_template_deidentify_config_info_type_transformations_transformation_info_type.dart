// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_info_type_sensitivity_score.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType {
  /// Name of the information type.
  final pulumi.Input<String> name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeSensitivityScore
  >?
  sensitivityScore;

  /// Version name for this InfoType.
  final pulumi.Input<String>? version;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType].
  /// [name] Name of the information type.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version name for this InfoType.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeSensitivityScore,
            Map<String, dynamic>
          >(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() {
        final guardedValue = map['sensitivityScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeSensitivityScore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
