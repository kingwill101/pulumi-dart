// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_organization_intelligence_config_effective_intelligence_config.dart';
import 'control_organization_intelligence_config_filter.dart';
import 'control_organization_intelligence_config_trial_config.dart';

/// Input properties used for looking up and filtering ControlOrganizationIntelligenceConfig resources.
class ControlOrganizationIntelligenceConfigState {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  final pulumi.Input<String>? editionConfig;
  /// The Intelligence config that is effective for the resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs;
  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlOrganizationIntelligenceConfigFilter>? filter;
  /// Identifier of the GCP Organization. For GCP org, this field should be organization number.
  final pulumi.Input<String>? name;
  /// The trial configuration of the Storage Intelligence resource.
  /// Structure is documented below.
  final pulumi.Input<List<ControlOrganizationIntelligenceConfigTrialConfig>>? trialConfigs;
  /// The time at which the Storage Intelligence Config resource is last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ControlOrganizationIntelligenceConfigState].
  /// [editionConfig] Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, DISABLED, TRIAL and STANDARD.
  /// [effectiveIntelligenceConfigs] The Intelligence config that is effective for the resource.
  /// [filter] Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// [name] Identifier of the GCP Organization. For GCP org, this field should be organization number.
  /// [trialConfigs] The trial configuration of the Storage Intelligence resource.
  /// [updateTime] The time at which the Storage Intelligence Config resource is last updated.
  ControlOrganizationIntelligenceConfigState({
    pulumi.Output<String>? editionConfig,
    pulumi.Output<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>? effectiveIntelligenceConfigs,
    pulumi.Output<ControlOrganizationIntelligenceConfigFilter>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<List<ControlOrganizationIntelligenceConfigTrialConfig>>? trialConfigs,
    pulumi.Output<String>? updateTime,
  }) :
      editionConfig = pulumi.Input.asOptionalInput<String>(editionConfig),
      effectiveIntelligenceConfigs = pulumi.Input.asOptionalInput<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>(effectiveIntelligenceConfigs),
      filter = pulumi.Input.asOptionalInput<ControlOrganizationIntelligenceConfigFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      trialConfigs = pulumi.Input.asOptionalInput<List<ControlOrganizationIntelligenceConfigTrialConfig>>(trialConfigs),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editionConfig': ?editionConfig,
      'effectiveIntelligenceConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>, List<Map<String, dynamic>>>(effectiveIntelligenceConfigs, (value) => pulumi.Input.encodeList<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<ControlOrganizationIntelligenceConfigFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'trialConfigs': ?pulumi.Input.mapOptionalInputValue<List<ControlOrganizationIntelligenceConfigTrialConfig>, List<Map<String, dynamic>>>(trialConfigs, (value) => pulumi.Input.encodeList<ControlOrganizationIntelligenceConfigTrialConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory ControlOrganizationIntelligenceConfigState.fromMap(Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigState(
      editionConfig: map['editionConfig'] == null ? null : pulumi.Output.create<String>(map['editionConfig'] as String),
      effectiveIntelligenceConfigs: map['effectiveIntelligenceConfigs'] == null ? null : pulumi.Output.create<List<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>>(pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig>(map['effectiveIntelligenceConfigs'], (value) => ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      filter: map['filter'] == null ? null : pulumi.Output.create<ControlOrganizationIntelligenceConfigFilter>(ControlOrganizationIntelligenceConfigFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      trialConfigs: map['trialConfigs'] == null ? null : pulumi.Output.create<List<ControlOrganizationIntelligenceConfigTrialConfig>>(pulumi.Input.decodeList<ControlOrganizationIntelligenceConfigTrialConfig>(map['trialConfigs'], (value) => ControlOrganizationIntelligenceConfigTrialConfig.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

