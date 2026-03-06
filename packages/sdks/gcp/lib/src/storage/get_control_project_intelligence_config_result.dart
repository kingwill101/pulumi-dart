// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_config_effective_intelligence_config.dart';
import 'get_control_project_intelligence_config_filter.dart';
import 'get_control_project_intelligence_config_trial_config.dart';

/// Result data returned by getControlProjectIntelligenceConfig.
class GetControlProjectIntelligenceConfigResult {
  final String editionConfig;
  final List<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig> effectiveIntelligenceConfigs;
  final List<GetControlProjectIntelligenceConfigFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetControlProjectIntelligenceConfigTrialConfig> trialConfigs;
  final String updateTime;

  /// Creates a new [GetControlProjectIntelligenceConfigResult].
  /// [editionConfig] Required.
  /// [effectiveIntelligenceConfigs] Required.
  /// [filters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [trialConfigs] Required.
  /// [updateTime] Required.
  const GetControlProjectIntelligenceConfigResult({
    required this.editionConfig,
    required this.effectiveIntelligenceConfigs,
    required this.filters,
    required this.id,
    required this.name,
    required this.trialConfigs,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': editionConfig,
      'effectiveIntelligenceConfigs': pulumi.Input.encodeList<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(effectiveIntelligenceConfigs, (value) => value.toMap()),
      'filters': pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'trialConfigs': pulumi.Input.encodeList<GetControlProjectIntelligenceConfigTrialConfig, Map<String, dynamic>>(trialConfigs, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetControlProjectIntelligenceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigResult(
      editionConfig: map['editionConfig'] as String,
      effectiveIntelligenceConfigs: pulumi.Input.decodeList<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs']!, (value) => GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())),
      filters: pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilter>(map['filters']!, (value) => GetControlProjectIntelligenceConfigFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      trialConfigs: pulumi.Input.decodeList<GetControlProjectIntelligenceConfigTrialConfig>(map['trialConfigs']!, (value) => GetControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}

