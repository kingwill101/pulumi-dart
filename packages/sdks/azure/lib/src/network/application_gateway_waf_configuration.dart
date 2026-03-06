// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_waf_configuration_disabled_rule_group.dart';
import 'application_gateway_waf_configuration_exclusion.dart';

class ApplicationGatewayWafConfiguration {
  /// One or more `disabled_rule_group` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayWafConfigurationDisabledRuleGroup>>? disabledRuleGroups;
  /// Is the Web Application Firewall enabled?
  final pulumi.Input<bool> enabled;
  /// One or more `exclusion` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayWafConfigurationExclusion>>? exclusions;
  /// The File Upload Limit in MB. Accepted values are in the range `1`MB to `750`MB for the `WAF_v2` SKU, and `1`MB to `500`MB for all other SKUs. Defaults to `100`MB.
  final pulumi.Input<int>? fileUploadLimitMb;
  /// The Web Application Firewall Mode. Possible values are `Detection` and `Prevention`.
  final pulumi.Input<String> firewallMode;
  /// The Maximum Request Body Size in KB. Accepted values are in the range `1`KB to `128`KB. Defaults to `128`KB.
  final pulumi.Input<int>? maxRequestBodySizeKb;
  /// Is Request Body Inspection enabled? Defaults to `true`.
  final pulumi.Input<bool>? requestBodyCheck;
  /// The Type of the Rule Set used for this Web Application Firewall. Possible values are `OWASP`, `Microsoft_BotManagerRuleSet` and `Microsoft_DefaultRuleSet`. Defaults to `OWASP`.
  final pulumi.Input<String>? ruleSetType;
  /// The Version of the Rule Set used for this Web Application Firewall. Possible values are `0.1`, `1.0`, `1.1`, `2.1`, `2.2`, `2.2.9`, `3.0`, `3.1` and `3.2`.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ApplicationGatewayWafConfiguration].
  /// [disabledRuleGroups] One or more `disabled_rule_group` blocks as defined below.
  /// [enabled] Is the Web Application Firewall enabled?
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [fileUploadLimitMb] The File Upload Limit in MB. Accepted values are in the range `1`MB to `750`MB for the `WAF_v2` SKU, and `1`MB to `500`MB for all other SKUs. Defaults to `100`MB.
  /// [firewallMode] The Web Application Firewall Mode. Possible values are `Detection` and `Prevention`.
  /// [maxRequestBodySizeKb] The Maximum Request Body Size in KB. Accepted values are in the range `1`KB to `128`KB. Defaults to `128`KB.
  /// [requestBodyCheck] Is Request Body Inspection enabled? Defaults to `true`.
  /// [ruleSetType] The Type of the Rule Set used for this Web Application Firewall. Possible values are `OWASP`, `Microsoft_BotManagerRuleSet` and `Microsoft_DefaultRuleSet`. Defaults to `OWASP`.
  /// [ruleSetVersion] The Version of the Rule Set used for this Web Application Firewall. Possible values are `0.1`, `1.0`, `1.1`, `2.1`, `2.2`, `2.2.9`, `3.0`, `3.1` and `3.2`.
  const ApplicationGatewayWafConfiguration({
    this.disabledRuleGroups,
    required this.enabled,
    this.exclusions,
    this.fileUploadLimitMb,
    required this.firewallMode,
    this.maxRequestBodySizeKb,
    this.requestBodyCheck,
    this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledRuleGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayWafConfigurationDisabledRuleGroup>, List<Map<String, dynamic>>>(disabledRuleGroups, (value) => pulumi.Input.encodeList<ApplicationGatewayWafConfigurationDisabledRuleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayWafConfigurationExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ApplicationGatewayWafConfigurationExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileUploadLimitMb': ?fileUploadLimitMb,
      'firewallMode': firewallMode,
      'maxRequestBodySizeKb': ?maxRequestBodySizeKb,
      'requestBodyCheck': ?requestBodyCheck,
      'ruleSetType': ?ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ApplicationGatewayWafConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayWafConfiguration(
      disabledRuleGroups: (() { final guardedValue = map['disabledRuleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayWafConfigurationDisabledRuleGroup>(guardedValue, (value) => ApplicationGatewayWafConfigurationDisabledRuleGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayWafConfigurationExclusion>(guardedValue, (value) => ApplicationGatewayWafConfigurationExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileUploadLimitMb: (() { final guardedValue = map['fileUploadLimitMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firewallMode: pulumi.Input.fromValue(map['firewallMode'] as String),
      maxRequestBodySizeKb: (() { final guardedValue = map['maxRequestBodySizeKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requestBodyCheck: (() { final guardedValue = map['requestBodyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleSetType: (() { final guardedValue = map['ruleSetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}

