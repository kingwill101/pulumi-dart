// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_folder_intelligence_config_effective_intelligence_config.dart';
import 'control_folder_intelligence_config_filter.dart';
import 'control_folder_intelligence_config_trial_config.dart';

/// Input properties used for looking up and filtering ControlFolderIntelligenceConfig resources.
class ControlFolderIntelligenceConfigState {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  final pulumi.Input<String>? name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlFolderIntelligenceConfigTrialConfig>>? trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ControlFolderIntelligenceConfigState].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  /// [effectiveIntelligenceConfigs] The Intelligence config that is effective for the resource.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  /// [trialConfigs] The trial configuration of the Storage Intelligence resource.
  /// [updateTime] The time at which the Storage Intelligence Config resource is last updated.
  ControlFolderIntelligenceConfigState({
    pulumi.Output<String>? editionConfig,
    pulumi.Output<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs,
    pulumi.Output<ControlFolderIntelligenceConfigFilter>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<List<ControlFolderIntelligenceConfigTrialConfig>>? trialConfigs,
    pulumi.Output<String>? updateTime,
  }) :
      editionConfig = pulumi.Input.asOptionalInput<String>(editionConfig),
      effectiveIntelligenceConfigs = pulumi.Input.asOptionalInput<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>(effectiveIntelligenceConfigs),
      filter = pulumi.Input.asOptionalInput<ControlFolderIntelligenceConfigFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      trialConfigs = pulumi.Input.asOptionalInput<List<ControlFolderIntelligenceConfigTrialConfig>>(trialConfigs),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'effectiveIntelligenceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>, List<Map<String, dynamic>>>(effectiveIntelligenceConfigs, (value) => pulumi.Input.encodeList<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlFolderIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'trialConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlFolderIntelligenceConfigTrialConfig>, List<Map<String, dynamic>>>(trialConfigs, (value) => pulumi.Input.encodeList<ControlFolderIntelligenceConfigTrialConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory ControlFolderIntelligenceConfigState.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigState(
      editionConfig: map['editionConfig'] == null ? null : pulumi.Output.create<String>(map['editionConfig'] as String),
      effectiveIntelligenceConfigs: map['effectiveIntelligenceConfigs'] == null ? null : pulumi.Output.create<List<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>>(pulumi.Input.decodeList<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs'], (value) => ControlFolderIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      filter: map['filter'] == null ? null : pulumi.Output.create<ControlFolderIntelligenceConfigFilter>(ControlFolderIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      trialConfigs: map['trialConfigs'] == null ? null : pulumi.Output.create<List<ControlFolderIntelligenceConfigTrialConfig>>(pulumi.Input.decodeList<ControlFolderIntelligenceConfigTrialConfig>(map['trialConfigs'], (value) => ControlFolderIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

