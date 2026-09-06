// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';
import 'endpoint_authentication_response.dart';

/// Account resource properties.
class AccountResourceResponseProperties {
  /// Account configuration. This can only be set at RecommendationsService Account creation.
  final pulumi.Input<String?>? configuration;
  /// The list of CORS details.
  final pulumi.Input<List<CorsRuleResponse>?>? cors;
  /// The list of service endpoints authentication details.
  final pulumi.Input<List<EndpointAuthenticationResponse>?>? endpointAuthentications;
  /// The resource provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Connection string to write Accounts reports to.
  final pulumi.Input<String?>? reportsConnectionString;

  /// Creates a new [AccountResourceResponseProperties].
  /// [configuration] Account configuration. This can only be set at RecommendationsService Account creation.
  /// [cors] The list of CORS details.
  /// [endpointAuthentications] The list of service endpoints authentication details.
  /// [provisioningState] The resource provisioning state.
  /// [reportsConnectionString] Connection string to write Accounts reports to.
  const AccountResourceResponseProperties({
    this.configuration,
    this.cors,
    this.endpointAuthentications,
    required this.provisioningState,
    this.reportsConnectionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'cors': ?pulumi.Input.mapOptionalInputValue<List<CorsRuleResponse>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointAuthentications': ?pulumi.Input.mapOptionalInputValue<List<EndpointAuthenticationResponse>, List<Map<String, dynamic>>>(endpointAuthentications, (value) => pulumi.Input.encodeList<EndpointAuthenticationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'reportsConnectionString': ?reportsConnectionString,
    };
  }

  factory AccountResourceResponseProperties.fromMap(Map<String, dynamic> map) {
    return AccountResourceResponseProperties(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CorsRuleResponse>(guardedValue, (value) => CorsRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpointAuthentications: (() { final guardedValue = map['endpointAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointAuthenticationResponse>(guardedValue, (value) => EndpointAuthenticationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      reportsConnectionString: (() { final guardedValue = map['reportsConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
