// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_advanced_options_config_json_custom_config.dart';

class RegionSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>? jsonCustomConfig;
  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// Possible values are: `DISABLED`, `STANDARD`, `STANDARD_WITH_GRAPHQL`.
  final pulumi.Input<String>? jsonParsing;
  /// Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// Possible values are: `NORMAL`, `VERBOSE`.
  final pulumi.Input<String>? logLevel;
  /// (Optional, Beta)
  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// Values are case insensitive.
  /// Possible values are: `8KB`, `16KB`, `32KB`, `48KB`, `64KB`.
  final pulumi.Input<String>? requestBodyInspectionSize;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final pulumi.Input<List<String>>? userIpRequestHeaders;

  /// Creates a new [RegionSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// [requestBodyInspectionSize] (Optional, Beta)
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  const RegionSecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.requestBodyInspectionSize,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?jsonParsing,
      'logLevel': ?logLevel,
      'requestBodyInspectionSize': ?requestBodyInspectionSize,
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory RegionSecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: (() { final guardedValue = map['jsonCustomConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonParsing: (() { final guardedValue = map['jsonParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyInspectionSize: (() { final guardedValue = map['requestBodyInspectionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userIpRequestHeaders: (() { final guardedValue = map['userIpRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
