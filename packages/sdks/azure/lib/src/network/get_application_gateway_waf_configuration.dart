// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_waf_configuration_disabled_rule_group.dart';
import 'get_application_gateway_waf_configuration_exclusion.dart';

class GetApplicationGatewayWafConfiguration {
  /// One or more `disabled_rule_group` blocks as defined below.
  final pulumi.Input<List<GetApplicationGatewayWafConfigurationDisabledRuleGroup>> disabledRuleGroups;
  /// Is the Web Application Firewall enabled?
  final pulumi.Input<bool> enabled;
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<GetApplicationGatewayWafConfigurationExclusion>> exclusions;
  /// The File Upload Limit in MB.
  final pulumi.Input<int> fileUploadLimitMb;
  /// The Web Application Firewall Mode.
  final pulumi.Input<String> firewallMode;
  /// The Maximum Request Body Size in KB.
  final pulumi.Input<int> maxRequestBodySizeKb;
  /// Is Request Body Inspection enabled?
  final pulumi.Input<bool> requestBodyCheck;
  /// The Type of the Rule Set used for this Web Application Firewall.
  final pulumi.Input<String> ruleSetType;
  /// The Version of the Rule Set used for this Web Application Firewall.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [GetApplicationGatewayWafConfiguration].
  /// [disabledRuleGroups] One or more `disabled_rule_group` blocks as defined below.
  /// [enabled] Is the Web Application Firewall enabled?
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [fileUploadLimitMb] The File Upload Limit in MB.
  /// [firewallMode] The Web Application Firewall Mode.
  /// [maxRequestBodySizeKb] The Maximum Request Body Size in KB.
  /// [requestBodyCheck] Is Request Body Inspection enabled?
  /// [ruleSetType] The Type of the Rule Set used for this Web Application Firewall.
  /// [ruleSetVersion] The Version of the Rule Set used for this Web Application Firewall.
  const GetApplicationGatewayWafConfiguration({
    required this.disabledRuleGroups,
    required this.enabled,
    required this.exclusions,
    required this.fileUploadLimitMb,
    required this.firewallMode,
    required this.maxRequestBodySizeKb,
    required this.requestBodyCheck,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledRuleGroups': pulumi.Input.mapInputValue<List<GetApplicationGatewayWafConfigurationDisabledRuleGroup>, List<Map<String, dynamic>>>(disabledRuleGroups, (value) => pulumi.Input.encodeList<GetApplicationGatewayWafConfigurationDisabledRuleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'exclusions': pulumi.Input.mapInputValue<List<GetApplicationGatewayWafConfigurationExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<GetApplicationGatewayWafConfigurationExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileUploadLimitMb': fileUploadLimitMb,
      'firewallMode': firewallMode,
      'maxRequestBodySizeKb': maxRequestBodySizeKb,
      'requestBodyCheck': requestBodyCheck,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory GetApplicationGatewayWafConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayWafConfiguration(
      disabledRuleGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayWafConfigurationDisabledRuleGroup>(map['disabledRuleGroups']!, (value) => GetApplicationGatewayWafConfigurationDisabledRuleGroup.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exclusions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayWafConfigurationExclusion>(map['exclusions']!, (value) => GetApplicationGatewayWafConfigurationExclusion.fromMap((value as Map).cast<String, dynamic>()))),
      fileUploadLimitMb: pulumi.Input.fromValue(map['fileUploadLimitMb'] as int),
      firewallMode: pulumi.Input.fromValue(map['firewallMode'] as String),
      maxRequestBodySizeKb: pulumi.Input.fromValue(map['maxRequestBodySizeKb'] as int),
      requestBodyCheck: pulumi.Input.fromValue(map['requestBodyCheck'] as bool),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}

