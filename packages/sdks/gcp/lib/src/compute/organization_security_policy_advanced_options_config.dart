// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_advanced_options_config_json_custom_config.dart';

class OrganizationSecurityPolicyAdvancedOptionsConfig {
  /// Custom JSON parsing configurations.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig?>? jsonCustomConfig;
  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// Possible values are: `DISABLED`, `STANDARD`, `STANDARD_WITH_GRAPHQL`.
  final pulumi.Input<String?>? jsonParsing;
  /// Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// Possible values are: `NORMAL`, `VERBOSE`.
  final pulumi.Input<String?>? logLevel;
  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB", "32KB", "48KB" and "64KB".
  /// Values are case insensitive.
  /// Possible values are: `8KB`, `16KB`, `32KB`, `48KB`, `64KB`.
  final pulumi.Input<String?>? requestBodyInspectionSize;
  /// An optional list of case-insensitive request header names to use for resolving the client source IP address.
  final pulumi.Input<List<String>?>? userIpRequestHeaders;

  /// Creates a new [OrganizationSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfig] Custom JSON parsing configurations.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// [requestBodyInspectionSize] The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB", "32KB", "48KB" and "64KB".
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the client source IP address.
  const OrganizationSecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.requestBodyInspectionSize,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig, Map<String, dynamic>>(jsonCustomConfig, (value) => value.toMap()),
      'jsonParsing': ?jsonParsing,
      'logLevel': ?logLevel,
      'requestBodyInspectionSize': ?requestBodyInspectionSize,
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory OrganizationSecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: (() { final guardedValue = map['jsonCustomConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonParsing: (() { final guardedValue = map['jsonParsing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestBodyInspectionSize: (() { final guardedValue = map['requestBodyInspectionSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userIpRequestHeaders: (() { final guardedValue = map['userIpRequestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
