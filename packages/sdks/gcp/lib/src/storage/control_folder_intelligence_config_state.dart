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
    this.editionConfig,
    this.effectiveIntelligenceConfigs,
    this.filter,
    this.name,
    this.trialConfigs,
    this.updateTime,
  });

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
      editionConfig: map['editionConfig'] == null ? null : (map['editionConfig'] as String).input(),
      effectiveIntelligenceConfigs: map['effectiveIntelligenceConfigs'] == null ? null : (pulumi.Input.decodeList<ControlFolderIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs'], (value) => ControlFolderIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (ControlFolderIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      trialConfigs: map['trialConfigs'] == null ? null : (pulumi.Input.decodeList<ControlFolderIntelligenceConfigTrialConfig>(map['trialConfigs'], (value) => ControlFolderIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

