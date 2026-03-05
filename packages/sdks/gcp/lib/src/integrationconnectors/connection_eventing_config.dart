// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_additional_variable.dart';
import 'connection_eventing_config_auth_config.dart';
import 'connection_eventing_config_registration_destination_config.dart';

class ConnectionEventingConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingConfigAdditionalVariable>>? additionalVariables;
  /// authConfig for Eventing Configuration.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigAuthConfig>? authConfig;
  /// Enrichment Enabled.
  final pulumi.Input<bool>? enrichmentEnabled;
  /// registrationDestinationConfig
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigRegistrationDestinationConfig> registrationDestinationConfig;

  /// Creates a new [ConnectionEventingConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authConfig] authConfig for Eventing Configuration.
  /// [enrichmentEnabled] Enrichment Enabled.
  /// [registrationDestinationConfig] registrationDestinationConfig
  ConnectionEventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.enrichmentEnabled,
    required this.registrationDestinationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingConfigAdditionalVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConnectionEventingConfigAdditionalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionEventingConfigAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'enrichmentEnabled': ?enrichmentEnabled,
      'registrationDestinationConfig': pulumi.Input.mapInputValue<ConnectionEventingConfigRegistrationDestinationConfig, Map<String, dynamic>>(registrationDestinationConfig, (value) => value.toMap()),
    };
  }

  factory ConnectionEventingConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfig(
      additionalVariables: (() { final guardedValue = map['additionalVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionEventingConfigAdditionalVariable>(guardedValue, (value) => ConnectionEventingConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionEventingConfigAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enrichmentEnabled: (() { final guardedValue = map['enrichmentEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registrationDestinationConfig: pulumi.Input.fromValue(ConnectionEventingConfigRegistrationDestinationConfig.fromMap((map['registrationDestinationConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

