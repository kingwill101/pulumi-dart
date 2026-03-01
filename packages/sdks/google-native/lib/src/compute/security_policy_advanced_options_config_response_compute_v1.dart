// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config_response_compute_v1.dart';

class SecurityPolicyAdvancedOptionsConfigResponseComputeV1 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1 jsonCustomConfig;
  final String jsonParsing;
  final String logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String> userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigResponseComputeV1].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Required.
  /// [logLevel] Required.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigResponseComputeV1({
    required this.jsonCustomConfig,
    required this.jsonParsing,
    required this.logLevel,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': jsonCustomConfig.toMap(),
      'jsonParsing': jsonParsing,
      'logLevel': logLevel,
      'userIpRequestHeaders': userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigResponseComputeV1(
      jsonCustomConfig: SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeV1.fromMap((map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] as String,
      logLevel: map['logLevel'] as String,
      userIpRequestHeaders: (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}

