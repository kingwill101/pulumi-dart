// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_advanced_options_config_json_custom_config_compute_v1.dart';
import 'security_policy_advanced_options_config_json_parsing_compute_v1.dart';
import 'security_policy_advanced_options_config_log_level_compute_v1.dart';

class SecurityPolicyAdvancedOptionsConfigComputeV1 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final pulumi.Input<
    SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1
  >?
  jsonCustomConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1>?
  jsonParsing;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1>?
  logLevel;

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
      'jsonCustomConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1,
            Map<String, dynamic>
          >(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1,
            String
          >(jsonParsing, (value) => value.wireValue),
      'logLevel':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1,
            String
          >(logLevel, (value) => value.wireValue),
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigComputeV1(
      jsonCustomConfig: (() {
        final guardedValue = map['jsonCustomConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      jsonParsing: (() {
        final guardedValue = map['jsonParsing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      logLevel: (() {
        final guardedValue = map['logLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      userIpRequestHeaders: (() {
        final guardedValue = map['userIpRequestHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
