// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_advanced_options_config_json_custom_config.dart';

class GetRegionSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  final pulumi.Input<List<GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>> jsonCustomConfigs;
  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values: ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
  final pulumi.Input<String> jsonParsing;
  /// Logging level. Supported values include: "NORMAL", "VERBOSE". Possible values: ["NORMAL", "VERBOSE"]
  final pulumi.Input<String> logLevel;
  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// Values are case insensitive. Possible values: ["8KB", "16KB", "32KB", "48KB", "64KB"]
  final pulumi.Input<String> requestBodyInspectionSize;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>> userIpRequestHeaders;

  /// Creates a new [GetRegionSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfigs] Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values: ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE". Possible values: ["NORMAL", "VERBOSE"]
  /// [requestBodyInspectionSize] The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  GetRegionSecurityPolicyAdvancedOptionsConfig({
    required this.jsonCustomConfigs,
    required this.jsonParsing,
    required this.logLevel,
    required this.requestBodyInspectionSize,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfigs': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>, List<Map<String, dynamic>>>(jsonCustomConfigs, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jsonParsing': jsonParsing,
      'logLevel': logLevel,
      'requestBodyInspectionSize': requestBodyInspectionSize,
      'userIpRequestHeaders': userIpRequestHeaders,
    };
  }

  factory GetRegionSecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfigs: (pulumi.Input.decodeList<GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>(map['jsonCustomConfigs'], (value) => GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      jsonParsing: (map['jsonParsing'] as String).input(),
      logLevel: (map['logLevel'] as String).input(),
      requestBodyInspectionSize: (map['requestBodyInspectionSize'] as String).input(),
      userIpRequestHeaders: ((map['userIpRequestHeaders'] as List).cast<String>()).input(),
    );
  }
}

