// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_min_likelihood_per_info_type_info_type_sensitivity_score.dart';

class PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final pulumi.Input<String> name;
  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScore?>? sensitivityScore;
  /// Version name for this InfoType.
  final pulumi.Input<String?>? version;

  /// Creates a new [PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version name for this InfoType.
  const PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
