// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_config_effective_intelligence_config.dart';
import 'get_control_project_intelligence_config_filter.dart';
import 'get_control_project_intelligence_config_trial_config.dart';

/// Result data returned by getControlProjectIntelligenceConfig.
class GetControlProjectIntelligenceConfigResult {
  final String? editionConfig;
  final List<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig>? effectiveIntelligenceConfigs;
  final List<GetControlProjectIntelligenceConfigFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final List<GetControlProjectIntelligenceConfigTrialConfig>? trialConfigs;
  final String? updateTime;

  /// Creates a new [GetControlProjectIntelligenceConfigResult].
  /// [editionConfig] Optional.
  /// [effectiveIntelligenceConfigs] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [trialConfigs] Optional.
  /// [updateTime] Optional.
  const GetControlProjectIntelligenceConfigResult({
    this.editionConfig,
    this.effectiveIntelligenceConfigs,
    this.filters,
    this.id,
    this.name,
    this.trialConfigs,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'effectiveIntelligenceConfigs': ?(() { final guardedValue = effectiveIntelligenceConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceConfigFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'trialConfigs': ?(() { final guardedValue = trialConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetControlProjectIntelligenceConfigTrialConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetControlProjectIntelligenceConfigResult.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigResult(
      editionConfig: (() { final guardedValue = map['editionConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveIntelligenceConfigs: (() { final guardedValue = map['effectiveIntelligenceConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(guardedValue, (value) => GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceConfigFilter>(guardedValue, (value) => GetControlProjectIntelligenceConfigFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trialConfigs: (() { final guardedValue = map['trialConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetControlProjectIntelligenceConfigTrialConfig>(guardedValue, (value) => GetControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
