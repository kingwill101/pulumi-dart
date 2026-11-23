// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_additional_variable.dart';
import 'connection_eventing_config_auth_config.dart';
import 'connection_eventing_config_dead_letter_config.dart';
import 'connection_eventing_config_enrichment_config.dart';
import 'connection_eventing_config_registration_destination_config.dart';

class ConnectionEventingConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingConfigAdditionalVariable>?>? additionalVariables;
  /// List of allowed event types for the connection.
  final pulumi.Input<List<String>?>? allowedEventTypes;
  /// authConfig for Eventing Configuration.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigAuthConfig?>? authConfig;
  /// Dead letter configuration for eventing of a connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigDeadLetterConfig?>? deadLetterConfig;
  /// Data enrichment configuration.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigEnrichmentConfig?>? enrichmentConfig;
  /// Enrichment Enabled.
  final pulumi.Input<bool?>? enrichmentEnabled;
  /// Filter to be applied on the events to be received by the connection.
  final pulumi.Input<String?>? globalEventFilter;
  /// registrationDestinationConfig
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigRegistrationDestinationConfig> registrationDestinationConfig;

  /// Creates a new [ConnectionEventingConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [allowedEventTypes] List of allowed event types for the connection.
  /// [authConfig] authConfig for Eventing Configuration.
  /// [deadLetterConfig] Dead letter configuration for eventing of a connection.
  /// [enrichmentConfig] Data enrichment configuration.
  /// [enrichmentEnabled] Enrichment Enabled.
  /// [globalEventFilter] Filter to be applied on the events to be received by the connection.
  /// [registrationDestinationConfig] registrationDestinationConfig
  const ConnectionEventingConfig({
    this.additionalVariables,
    this.allowedEventTypes,
    this.authConfig,
    this.deadLetterConfig,
    this.enrichmentConfig,
    this.enrichmentEnabled,
    this.globalEventFilter,
    required this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingConfigAdditionalVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConnectionEventingConfigAdditionalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowedEventTypes': ?allowedEventTypes,
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfigAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'deadLetterConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfigDeadLetterConfig, Map<String, dynamic>>(deadLetterConfig, (value) => value.toMap()),
      'enrichmentConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfigEnrichmentConfig, Map<String, dynamic>>(enrichmentConfig, (value) => value.toMap()),
      'enrichmentEnabled': ?enrichmentEnabled,
      'globalEventFilter': ?globalEventFilter,
      'registrationDestinationConfig': pulumi.Input.mapInputValue<ConnectionEventingConfigRegistrationDestinationConfig, Map<String, dynamic>>(registrationDestinationConfig, (value) => value.toMap()),
    };
  }

  factory ConnectionEventingConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfig(
      additionalVariables: (() { final guardedValue = map['additionalVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionEventingConfigAdditionalVariable>(guardedValue, (value) => ConnectionEventingConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowedEventTypes: (() { final guardedValue = map['allowedEventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfigAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deadLetterConfig: (() { final guardedValue = map['deadLetterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfigDeadLetterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichmentConfig: (() { final guardedValue = map['enrichmentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfigEnrichmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichmentEnabled: (() { final guardedValue = map['enrichmentEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      globalEventFilter: (() { final guardedValue = map['globalEventFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationDestinationConfig: pulumi.Input.fromValue(ConnectionEventingConfigRegistrationDestinationConfig.fromMap((map['registrationDestinationConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
