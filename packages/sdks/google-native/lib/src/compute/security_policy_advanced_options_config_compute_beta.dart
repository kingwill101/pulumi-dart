// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_advanced_options_config_json_custom_config_compute_beta.dart';
import 'security_policy_advanced_options_config_json_parsing_compute_beta.dart';
import 'security_policy_advanced_options_config_log_level_compute_beta.dart';

class SecurityPolicyAdvancedOptionsConfigComputeBeta {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta>? jsonCustomConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta>? jsonParsing;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta>? logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>>? userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigComputeBeta].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Optional.
  /// [logLevel] Optional.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigComputeBeta({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta, String>(jsonParsing, (value) => value.value),
      'logLevel': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta, String>(logLevel, (value) => value.value),
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigComputeBeta(
      jsonCustomConfig: map['jsonCustomConfig'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta.fromMap((map['jsonCustomConfig'] as Map).cast<String, dynamic>())).input(),
      jsonParsing: map['jsonParsing'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta.fromValue(map['jsonParsing'] as String)).input(),
      logLevel: map['logLevel'] == null ? null : (SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta.fromValue(map['logLevel'] as String)).input(),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null ? null : ((map['userIpRequestHeaders'] as List).cast<String>()).input(),
    );
  }
}

