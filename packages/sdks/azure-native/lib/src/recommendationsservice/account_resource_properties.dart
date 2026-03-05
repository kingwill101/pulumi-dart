// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule.dart';
import 'endpoint_authentication.dart';

/// Account resource properties.
class AccountResourceProperties {
  /// Account configuration. This can only be set at RecommendationsService Account creation.
  final pulumi.Input<String>? configuration;
  /// The list of CORS details.
  final pulumi.Input<List<CorsRule>>? cors;
  /// The list of service endpoints authentication details.
  final pulumi.Input<List<EndpointAuthentication>>? endpointAuthentications;
  /// Connection string to write Accounts reports to.
  final pulumi.Input<String>? reportsConnectionString;

  /// Creates a new [AccountResourceProperties].
  /// [configuration] Account configuration. This can only be set at RecommendationsService Account creation.
  /// [cors] The list of CORS details.
  /// [endpointAuthentications] The list of service endpoints authentication details.
  /// [reportsConnectionString] Connection string to write Accounts reports to.
  AccountResourceProperties({
    this.configuration,
    this.cors,
    this.endpointAuthentications,
    this.reportsConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'cors': ?pulumi.Input.mapOptionalInputValue<List<CorsRule>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<CorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointAuthentications': ?pulumi.Input.mapOptionalInputValue<List<EndpointAuthentication>, List<Map<String, dynamic>>>(endpointAuthentications, (value) => pulumi.Input.encodeList<EndpointAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reportsConnectionString': ?reportsConnectionString,
    };
  }

  factory AccountResourceProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceProperties(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CorsRule>(guardedValue, (value) => CorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpointAuthentications: (() { final guardedValue = map['endpointAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointAuthentication>(guardedValue, (value) => EndpointAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reportsConnectionString: (() { final guardedValue = map['reportsConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

