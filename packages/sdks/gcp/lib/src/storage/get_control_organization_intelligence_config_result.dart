// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_organization_intelligence_config_effective_intelligence_config.dart';
import 'get_control_organization_intelligence_config_filter.dart';
import 'get_control_organization_intelligence_config_trial_config.dart';

/// Result data returned by getControlOrganizationIntelligenceConfig.
class GetControlOrganizationIntelligenceConfigResult {
  final String editionConfig;
  final List<
    GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig
  >
  effectiveIntelligenceConfigs;
  final List<GetControlOrganizationIntelligenceConfigFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetControlOrganizationIntelligenceConfigTrialConfig> trialConfigs;
  final String updateTime;

  /// Creates a new [GetControlOrganizationIntelligenceConfigResult].
  /// [editionConfig] Required.
  /// [effectiveIntelligenceConfigs] Required.
  /// [filters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [trialConfigs] Required.
  /// [updateTime] Required.
  GetControlOrganizationIntelligenceConfigResult({
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
      'effectiveIntelligenceConfigs':
          pulumi.Input.encodeList<
            GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig,
            Map<String, dynamic>
          >(effectiveIntelligenceConfigs, (value) => value.toMap()),
      'filters':
          pulumi.Input.encodeList<
            GetControlOrganizationIntelligenceConfigFilter,
            Map<String, dynamic>
          >(filters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'trialConfigs':
          pulumi.Input.encodeList<
            GetControlOrganizationIntelligenceConfigTrialConfig,
            Map<String, dynamic>
          >(trialConfigs, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetControlOrganizationIntelligenceConfigResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlOrganizationIntelligenceConfigResult(
      editionConfig: map['editionConfig'] as String,
      effectiveIntelligenceConfigs:
          pulumi.Input.decodeList<
            GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig
          >(
            map['effectiveIntelligenceConfigs']!,
            (value) =>
                GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      filters:
          pulumi
              .Input.decodeList<GetControlOrganizationIntelligenceConfigFilter>(
            map['filters']!,
            (value) => GetControlOrganizationIntelligenceConfigFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      name: map['name'] as String,
      trialConfigs:
          pulumi.Input.decodeList<
            GetControlOrganizationIntelligenceConfigTrialConfig
          >(
            map['trialConfigs']!,
            (value) =>
                GetControlOrganizationIntelligenceConfigTrialConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      updateTime: map['updateTime'] as String,
    );
  }
}
