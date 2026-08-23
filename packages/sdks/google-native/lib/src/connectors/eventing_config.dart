// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config.dart';
import 'config_variable.dart';
import 'destination_config.dart';

/// Eventing Configuration of a connection
class EventingConfig {
  /// Additional eventing related field values
  final pulumi.Input<List<ConfigVariable>>? additionalVariables;
  /// Auth details for the webhook adapter.
  final pulumi.Input<AuthConfig>? authConfig;
  /// Encryption key (can be either Google managed or CMEK).
  final pulumi.Input<ConfigVariable>? encryptionKey;
  /// Enrichment Enabled.
  final pulumi.Input<bool>? enrichmentEnabled;
  /// Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  final pulumi.Input<String>? eventsListenerIngressEndpoint;
  /// Optional. Private Connectivity Enabled.
  final pulumi.Input<bool>? privateConnectivityEnabled;
  /// Registration endpoint for auto registration.
  final pulumi.Input<DestinationConfig>? registrationDestinationConfig;

  /// Creates a new [EventingConfig].
  /// [additionalVariables] Additional eventing related field values
  /// [authConfig] Auth details for the webhook adapter.
  /// [encryptionKey] Encryption key (can be either Google managed or CMEK).
  /// [enrichmentEnabled] Enrichment Enabled.
  /// [eventsListenerIngressEndpoint] Optional. Ingress endpoint of the event listener. This is used only when private connectivity is enabled.
  /// [privateConnectivityEnabled] Optional. Private Connectivity Enabled.
  /// [registrationDestinationConfig] Registration endpoint for auto registration.
  const EventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.encryptionKey,
    this.enrichmentEnabled,
    this.eventsListenerIngressEndpoint,
    this.privateConnectivityEnabled,
    this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConfigVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?pulumi.Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'encryptionKey': ?pulumi.Input.mapOptionalInputValue<ConfigVariable, Map<String, dynamic>>(encryptionKey, (value) => value.toMap()),
      'enrichmentEnabled': ?enrichmentEnabled,
      'eventsListenerIngressEndpoint': ?eventsListenerIngressEndpoint,
      'privateConnectivityEnabled': ?privateConnectivityEnabled,
      'registrationDestinationConfig': ?pulumi.Input.mapOptionalInputValue<DestinationConfig, Map<String, dynamic>>(registrationDestinationConfig, (value) => value.toMap()),
    };
  }

  factory EventingConfig.fromMap(Map<String, dynamic> map) {
    return EventingConfig(
      additionalVariables: (() { final guardedValue = map['additionalVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigVariable>(guardedValue, (value) => ConfigVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigVariable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichmentEnabled: (() { final guardedValue = map['enrichmentEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventsListenerIngressEndpoint: (() { final guardedValue = map['eventsListenerIngressEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateConnectivityEnabled: (() { final guardedValue = map['privateConnectivityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationDestinationConfig: (() { final guardedValue = map['registrationDestinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DestinationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
