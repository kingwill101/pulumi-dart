// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_advanced_options_config_json_custom_config_compute_v1.dart';
import 'security_policy_advanced_options_config_json_parsing_compute_v1.dart';
import 'security_policy_advanced_options_config_log_level_compute_v1.dart';

class SecurityPolicyAdvancedOptionsConfigComputeV1 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1>? jsonCustomConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1>? jsonParsing;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1>? logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>>? userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigComputeV1].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Optional.
  /// [logLevel] Optional.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigComputeV1({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1, String>(jsonParsing, (value) => value.value),
      'logLevel': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1, String>(logLevel, (value) => value.value),
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigComputeV1(
      jsonCustomConfig: map['jsonCustomConfig'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1.fromMap((map['jsonCustomConfig']! as Map).cast<String, dynamic>())).input(),
      jsonParsing: map['jsonParsing'] == null ? null : (SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1.fromValue(map['jsonParsing']! as String)).input(),
      logLevel: map['logLevel'] == null ? null : (SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1.fromValue(map['logLevel']! as String)).input(),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null ? null : ((map['userIpRequestHeaders']! as List).cast<String>()).input(),
    );
  }
}

