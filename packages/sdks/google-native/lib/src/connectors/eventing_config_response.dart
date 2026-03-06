// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'destination_config_response.dart';

/// Eventing Configuration of a connection
class EventingConfigResponse {
  /// Additional eventing related field values
  final pulumi.Input<List<ConfigVariableResponse>> additionalVariables;
  /// Auth details for the webhook adapter.
  final pulumi.Input<AuthConfigResponse> authConfig;
  /// Encryption key (can be either Google managed or CMEK).
  final pulumi.Input<ConfigVariableResponse> encryptionKey;
  /// Enrichment Enabled.
  final pulumi.Input<bool> enrichmentEnabled;
  /// Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  final pulumi.Input<String> eventsListenerIngressEndpoint;
  /// Optional. Private Connectivity Enabled.
  final pulumi.Input<bool> privateConnectivityEnabled;
  /// Registration endpoint for auto registration.
  final pulumi.Input<DestinationConfigResponse> registrationDestinationConfig;

  /// Creates a new [EventingConfigResponse].
  /// [additionalVariables] Additional eventing related field values
  /// [authConfig] Auth details for the webhook adapter.
  /// [encryptionKey] Encryption key (can be either Google managed or CMEK).
  /// [enrichmentEnabled] Enrichment Enabled.
  /// [eventsListenerIngressEndpoint] Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  /// [privateConnectivityEnabled] Optional. Private Connectivity Enabled.
  /// [registrationDestinationConfig] Registration endpoint for auto registration.
  const EventingConfigResponse({
    required this.additionalVariables,
    required this.authConfig,
    required this.encryptionKey,
    required this.enrichmentEnabled,
    required this.eventsListenerIngressEndpoint,
    required this.privateConnectivityEnabled,
    required this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': pulumi.Input.mapInputValue<List<ConfigVariableResponse>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': pulumi.Input.mapInputValue<AuthConfigResponse, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'encryptionKey': pulumi.Input.mapInputValue<ConfigVariableResponse, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'enrichmentEnabled': enrichmentEnabled,
      'eventsListenerIngressEndpoint': eventsListenerIngressEndpoint,
      'privateConnectivityEnabled': privateConnectivityEnabled,
      'registrationDestinationConfig': pulumi.Input.mapInputValue<DestinationConfigResponse, Map<String, dynamic>>(registrationDestinationConfig, (value) => value.toMap()),
    };
  }

  factory EventingConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventingConfigResponse(
      additionalVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigVariableResponse>(map['additionalVariables']!, (value) => ConfigVariableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      authConfig: pulumi.Input.fromValue(AuthConfigResponse.fromMap((map['authConfig']! as Map).cast<String, dynamic>())),
      encryptionKey: pulumi.Input.fromValue(ConfigVariableResponse.fromMap((map['encryptionKey']! as Map).cast<String, dynamic>())),
      enrichmentEnabled: pulumi.Input.fromValue(map['enrichmentEnabled'] as bool),
      eventsListenerIngressEndpoint: pulumi.Input.fromValue(map['eventsListenerIngressEndpoint'] as String),
      privateConnectivityEnabled: pulumi.Input.fromValue(map['privateConnectivityEnabled'] as bool),
      registrationDestinationConfig: pulumi.Input.fromValue(DestinationConfigResponse.fromMap((map['registrationDestinationConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

