// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_advanced_options_config_json_custom_config.dart';
import 'security_policy_advanced_options_config_json_parsing.dart';
import 'security_policy_advanced_options_config_log_level.dart';

class SecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonCustomConfig>? jsonCustomConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonParsing>? jsonParsing;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigLogLevel>? logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>>? userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Optional.
  /// [logLevel] Optional.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonParsing, String>(jsonParsing, (value) => value.value),
      'logLevel': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigLogLevel, String>(logLevel, (value) => value.value),
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: map['jsonCustomConfig'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((map['jsonCustomConfig'] as Map).cast<String, dynamic>())).input(),
      jsonParsing: map['jsonParsing'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonParsing.fromValue(map['jsonParsing'] as String)).input(),
      logLevel: map['logLevel'] == null ? null : (SecurityPolicyAdvancedOptionsConfigLogLevel.fromValue(map['logLevel'] as String)).input(),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null ? null : ((map['userIpRequestHeaders'] as List).cast<String>()).input(),
    );
  }
}

