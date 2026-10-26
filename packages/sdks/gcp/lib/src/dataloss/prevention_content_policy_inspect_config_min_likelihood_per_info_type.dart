// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_min_likelihood_per_info_type_info_type.dart';

class PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType {
  /// Type of information the likeliness threshold applies to. Only one likelihood per infoType should be provided.
  /// If InfoTypeLikelihood does not have an info_type, the configuration fails.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType?>? infoType;
  /// Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String> minLikelihood;

  /// Creates a new [PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType].
  /// [infoType] Type of information the likeliness threshold applies to. Only one likelihood per infoType should be provided.
  /// [minLikelihood] Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info.
  const PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType({
    this.infoType,
    required this.minLikelihood,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'minLikelihood': minLikelihood,
    };
  }

  factory PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType(
      infoType: (() { final guardedValue = map['infoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigMinLikelihoodPerInfoTypeInfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minLikelihood: pulumi.Input.fromValue(map['minLikelihood'] as String),
    );
  }
}
