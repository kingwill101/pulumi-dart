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
  const SecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonParsing, String>(jsonParsing, (value) => value.wireValue),
      'logLevel': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigLogLevel, String>(logLevel, (value) => value.wireValue),
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: (() { final guardedValue = map['jsonCustomConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonParsing: (() { final guardedValue = map['jsonParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdvancedOptionsConfigJsonParsing.fromValue(guardedValue as String)); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdvancedOptionsConfigLogLevel.fromValue(guardedValue as String)); })(),
      userIpRequestHeaders: (() { final guardedValue = map['userIpRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

