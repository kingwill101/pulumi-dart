// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_info_type_sensitivity_score.dart';

class PreventionInspectTemplateInspectConfigInfoType {
  /// Name of the information type.
  final pulumi.Input<String> name;
  /// Optional custom sensitivity for this InfoType.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigInfoTypeSensitivityScore?>? sensitivityScore;
  /// Version name for this InfoType.
  final pulumi.Input<String?>? version;

  /// Creates a new [PreventionInspectTemplateInspectConfigInfoType].
  /// [name] Name of the information type.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType.
  /// [version] Version name for this InfoType.
  const PreventionInspectTemplateInspectConfigInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionInspectTemplateInspectConfigInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
