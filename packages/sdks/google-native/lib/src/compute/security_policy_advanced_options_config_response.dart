// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_advanced_options_config_json_custom_config_response.dart';

class SecurityPolicyAdvancedOptionsConfigResponse {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final pulumi.Input<
    SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse
  >
  jsonCustomConfig;
  final pulumi.Input<String> jsonParsing;
  final pulumi.Input<String> logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>> userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigResponse].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Required.
  /// [logLevel] Required.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigResponse({
    required this.jsonCustomConfig,
    required this.jsonParsing,
    required this.logLevel,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig':
          pulumi.Input.mapInputValue<
            SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse,
            Map<String, dynamic>
          >(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': jsonParsing,
      'logLevel': logLevel,
      'userIpRequestHeaders': userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigResponse(
      jsonCustomConfig: pulumi.Input.fromValue(
        SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse.fromMap(
          (map['jsonCustomConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      jsonParsing: pulumi.Input.fromValue(map['jsonParsing'] as String),
      logLevel: pulumi.Input.fromValue(map['logLevel'] as String),
      userIpRequestHeaders: pulumi.Input.fromValue(
        (map['userIpRequestHeaders'] as List).cast<String>(),
      ),
    );
  }
}
