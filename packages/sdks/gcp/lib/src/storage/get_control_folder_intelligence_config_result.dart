// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_folder_intelligence_config_effective_intelligence_config.dart';
import 'get_control_folder_intelligence_config_filter.dart';
import 'get_control_folder_intelligence_config_trial_config.dart';

/// Result data returned by getControlFolderIntelligenceConfig.
class GetControlFolderIntelligenceConfigResult {
  final String editionConfig;
  final List<GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig> effectiveIntelligenceConfigs;
  final List<GetControlFolderIntelligenceConfigFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetControlFolderIntelligenceConfigTrialConfig> trialConfigs;
  final String updateTime;

  /// Creates a new [GetControlFolderIntelligenceConfigResult].
  /// [editionConfig] Required.
  /// [effectiveIntelligenceConfigs] Required.
  /// [filters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [trialConfigs] Required.
  /// [updateTime] Required.
  const GetControlFolderIntelligenceConfigResult({
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
      'effectiveIntelligenceConfigs': pulumi.Input.encodeList<GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(effectiveIntelligenceConfigs, (value) => value.toMap()),
      'filters': pulumi.Input.encodeList<GetControlFolderIntelligenceConfigFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'trialConfigs': pulumi.Input.encodeList<GetControlFolderIntelligenceConfigTrialConfig, Map<String, dynamic>>(trialConfigs, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetControlFolderIntelligenceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigResult(
      editionConfig: map['editionConfig'] as String,
      effectiveIntelligenceConfigs: pulumi.Input.decodeList<GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs']!, (value) => GetControlFolderIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())),
      filters: pulumi.Input.decodeList<GetControlFolderIntelligenceConfigFilter>(map['filters']!, (value) => GetControlFolderIntelligenceConfigFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      trialConfigs: pulumi.Input.decodeList<GetControlFolderIntelligenceConfigTrialConfig>(map['trialConfigs']!, (value) => GetControlFolderIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
