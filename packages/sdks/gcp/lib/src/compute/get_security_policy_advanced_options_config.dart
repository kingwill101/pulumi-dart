// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_advanced_options_config_json_custom_config.dart';

class GetSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  final pulumi.Input<List<GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>> jsonCustomConfigs;
  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD".
  final pulumi.Input<String> jsonParsing;
  /// Logging level. Supported values include: "NORMAL", "VERBOSE".
  final pulumi.Input<String> logLevel;
  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB". Values are case insensitive.
  final pulumi.Input<String> requestBodyInspectionSize;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>> userIpRequestHeaders;

  /// Creates a new [GetSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfigs] Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD".
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// [requestBodyInspectionSize] The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB". Values are case insensitive.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  GetSecurityPolicyAdvancedOptionsConfig({
    required this.jsonCustomConfigs,
    required this.jsonParsing,
    required this.logLevel,
    required this.requestBodyInspectionSize,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfigs': pulumi.Input.mapInputValue<List<GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>, List<Map<String, dynamic>>>(jsonCustomConfigs, (value) => pulumi.Input.encodeList<GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jsonParsing': jsonParsing,
      'logLevel': logLevel,
      'requestBodyInspectionSize': requestBodyInspectionSize,
      'userIpRequestHeaders': userIpRequestHeaders,
    };
  }

  factory GetSecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfigs: (pulumi.Input.decodeList<GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>(map['jsonCustomConfigs'], (value) => GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jsonParsing: (map['jsonParsing'] as String).input(),
      logLevel: (map['logLevel'] as String).input(),
      requestBodyInspectionSize: (map['requestBodyInspectionSize'] as String).input(),
      userIpRequestHeaders: ((map['userIpRequestHeaders'] as List).cast<String>()).input(),
    );
  }
}

