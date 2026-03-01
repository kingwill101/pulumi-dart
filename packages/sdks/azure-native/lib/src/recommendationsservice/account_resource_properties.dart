// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule.dart';
import 'endpoint_authentication.dart';

/// Account resource properties.
class AccountResourceProperties {
  /// Account configuration. This can only be set at RecommendationsService Account creation.
  final String? configuration;
  /// The list of CORS details.
  final List<CorsRule>? cors;
  /// The list of service endpoints authentication details.
  final List<EndpointAuthentication>? endpointAuthentications;
  /// Connection string to write Accounts reports to.
  final String? reportsConnectionString;

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
      'cors': ?cors == null ? null : pulumi.Input.encodeList<CorsRule, Map<String, dynamic>>(cors!, (value) => value.toMap()),
      'endpointAuthentications': ?endpointAuthentications == null ? null : pulumi.Input.encodeList<EndpointAuthentication, Map<String, dynamic>>(endpointAuthentications!, (value) => value.toMap()),
      'reportsConnectionString': ?reportsConnectionString,
    };
  }

  factory AccountResourceProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceProperties(
      configuration: map['configuration'] == null ? null : map['configuration'] as String,
      cors: map['cors'] == null ? null : pulumi.Input.decodeList<CorsRule>(map['cors'], (value) => CorsRule.fromMap((value as Map).cast<String, dynamic>())),
      endpointAuthentications: map['endpointAuthentications'] == null ? null : pulumi.Input.decodeList<EndpointAuthentication>(map['endpointAuthentications'], (value) => EndpointAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      reportsConnectionString: map['reportsConnectionString'] == null ? null : map['reportsConnectionString'] as String,
    );
  }
}

