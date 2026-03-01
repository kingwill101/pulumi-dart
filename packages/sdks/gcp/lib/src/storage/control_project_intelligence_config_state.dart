// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_intelligence_config_effective_intelligence_config.dart';
import 'control_project_intelligence_config_filter.dart';
import 'control_project_intelligence_config_trial_config.dart';

/// Input properties used for looking up and filtering ControlProjectIntelligenceConfig resources.
class ControlProjectIntelligenceConfigState {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  final pulumi.Input<String>? name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlProjectIntelligenceConfigTrialConfig>>? trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ControlProjectIntelligenceConfigState].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  /// [effectiveIntelligenceConfigs] The Intelligence config that is effective for the resource.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP project. For GCP project, this field can be project name or project number.
  /// [trialConfigs] The trial configuration of the Storage Intelligence resource.
  /// [updateTime] The time at which the Storage Intelligence Config resource is last updated.
  ControlProjectIntelligenceConfigState({
    pulumi.Output<String>? editionConfig,
    pulumi.Output<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs,
    pulumi.Output<ControlProjectIntelligenceConfigFilter>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<List<ControlProjectIntelligenceConfigTrialConfig>>? trialConfigs,
    pulumi.Output<String>? updateTime,
  }) :
      editionConfig = pulumi.Input.asOptionalInput<String>(editionConfig),
      effectiveIntelligenceConfigs = pulumi.Input.asOptionalInput<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>(effectiveIntelligenceConfigs),
      filter = pulumi.Input.asOptionalInput<ControlProjectIntelligenceConfigFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      trialConfigs = pulumi.Input.asOptionalInput<List<ControlProjectIntelligenceConfigTrialConfig>>(trialConfigs),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'effectiveIntelligenceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>, List<Map<String, dynamic>>>(effectiveIntelligenceConfigs, (value) => pulumi.Input.encodeList<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlProjectIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'trialConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlProjectIntelligenceConfigTrialConfig>, List<Map<String, dynamic>>>(trialConfigs, (value) => pulumi.Input.encodeList<ControlProjectIntelligenceConfigTrialConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory ControlProjectIntelligenceConfigState.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigState(
      editionConfig: map['editionConfig'] == null ? null : pulumi.Output.create<String>(map['editionConfig'] as String),
      effectiveIntelligenceConfigs: map['effectiveIntelligenceConfigs'] == null ? null : pulumi.Output.create<List<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>>(pulumi.Input.decodeList<ControlProjectIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs'], (value) => ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      filter: map['filter'] == null ? null : pulumi.Output.create<ControlProjectIntelligenceConfigFilter>(ControlProjectIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      trialConfigs: map['trialConfigs'] == null ? null : pulumi.Output.create<List<ControlProjectIntelligenceConfigTrialConfig>>(pulumi.Input.decodeList<ControlProjectIntelligenceConfigTrialConfig>(map['trialConfigs'], (value) => ControlProjectIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

