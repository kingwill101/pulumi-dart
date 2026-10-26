// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type.dart';
import 'prevention_content_policy_inspect_config_info_type.dart';
import 'prevention_content_policy_inspect_config_limits.dart';
import 'prevention_content_policy_inspect_config_min_likelihood_per_info_type.dart';
import 'prevention_content_policy_inspect_config_rule_set.dart';

class PreventionContentPolicyInspectConfig {
  /// List of options defining data content to scan. If empty, text, images, and other content will be included.
  /// Each value may be one of: `CONTENT_TEXT`, `CONTENT_IMAGE`.
  final pulumi.Input<List<String>?>? contentOptions;
  /// Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigCustomInfoType>?>? customInfoTypes;
  /// When true, excludes type information of the findings.
  final pulumi.Input<bool?>? excludeInfoTypes;
  /// When true, a contextual quote from the data that triggered a finding is included in the response.
  final pulumi.Input<bool?>? includeQuote;
  /// Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
  /// or listed at https://cloud.google.com/dlp/docs/infotypes-reference.
  /// When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.
  /// By default this may be all types, but may change over time as detectors are updated.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigInfoType>?>? infoTypes;
  /// Configuration to control the number of findings returned.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigLimits?>? limits;
  /// Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info
  /// Default value is `POSSIBLE`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String?>? minLikelihood;
  /// Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood.
  /// The system only returns a finding if its likelihood is above this threshold. If this field
  /// is not set, the system uses the InspectConfig min_likelihood.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType>?>? minLikelihoodPerInfoTypes;
  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
  /// other rules are executed in the order they are specified for each info type.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSet>?>? ruleSets;

  /// Creates a new [PreventionContentPolicyInspectConfig].
  /// [contentOptions] List of options defining data content to scan. If empty, text, images, and other content will be included.
  /// [customInfoTypes] Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// [excludeInfoTypes] When true, excludes type information of the findings.
  /// [includeQuote] When true, a contextual quote from the data that triggered a finding is included in the response.
  /// [infoTypes] Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list
  /// [limits] Configuration to control the number of findings returned.
  /// [minLikelihood] Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info
  /// [minLikelihoodPerInfoTypes] Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood.
  /// [ruleSets] Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,
  const PreventionContentPolicyInspectConfig({
    this.contentOptions,
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.minLikelihoodPerInfoTypes,
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentOptions': ?contentOptions,
      'customInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigCustomInfoType>, List<Map<String, dynamic>>>(customInfoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigCustomInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': ?excludeInfoTypes,
      'includeQuote': ?includeQuote,
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'minLikelihood': ?minLikelihood,
      'minLikelihoodPerInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType>, List<Map<String, dynamic>>>(minLikelihoodPerInfoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionContentPolicyInspectConfig.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfig(
      contentOptions: (() { final guardedValue = map['contentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customInfoTypes: (() { final guardedValue = map['customInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigCustomInfoType>(guardedValue, (value) => PreventionContentPolicyInspectConfigCustomInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeQuote: (() { final guardedValue = map['includeQuote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigInfoType>(guardedValue, (value) => PreventionContentPolicyInspectConfigInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minLikelihood: (() { final guardedValue = map['minLikelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minLikelihoodPerInfoTypes: (() { final guardedValue = map['minLikelihoodPerInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType>(guardedValue, (value) => PreventionContentPolicyInspectConfigMinLikelihoodPerInfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSet>(guardedValue, (value) => PreventionContentPolicyInspectConfigRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
