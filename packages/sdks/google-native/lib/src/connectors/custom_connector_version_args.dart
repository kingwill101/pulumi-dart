// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config.dart';
import 'custom_connector_version_type.dart';
import 'destination_config.dart';

/// {@template pulumi_connectors_v1_custom_connector_version_args_doc}
/// The set of arguments for CustomConnectorVersion.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_custom_connector_version_args_doc}
class CustomConnectorVersionArgs {
  /// Configuration for establishing the authentication to the connector destination.
  final pulumi.Input<AuthConfig> authConfig;
  final pulumi.Input<String> customConnectorId;
  /// Required. Identifier to assign to the CreateCustomConnectorVersion. Must be unique within scope of the parent resource.
  final pulumi.Input<String> customConnectorVersionId;
  /// Configuration of the customConnector's destination.
  final pulumi.Input<DestinationConfig> destinationConfig;
  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  final pulumi.Input<bool>? enableBackendDestinationConfig;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  /// Optional. Location of the custom connector spec.
  final pulumi.Input<String>? specLocation;
  /// Type of the customConnector.
  final pulumi.Input<CustomConnectorVersionType> type;

  /// Creates a new [CustomConnectorVersionArgs].
  /// [authConfig] Configuration for establishing the authentication to the connector destination.
  /// [customConnectorId] Required.
  /// [customConnectorVersionId] Required. Identifier to assign to the CreateCustomConnectorVersion. Must be unique within scope of the parent resource.
  /// [destinationConfig] Configuration of the customConnector's destination.
  /// [enableBackendDestinationConfig] Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [project] Optional.
  /// [specLocation] Optional. Location of the custom connector spec.
  /// [type] Type of the customConnector.
  const CustomConnectorVersionArgs({
    required this.authConfig,
    required this.customConnectorId,
    required this.customConnectorVersionId,
    required this.destinationConfig,
    this.enableBackendDestinationConfig,
    this.labels,
    this.project,
    this.specLocation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': pulumi.Input.mapInputValue<AuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'customConnectorId': customConnectorId,
      'customConnectorVersionId': customConnectorVersionId,
      'destinationConfig': pulumi.Input.mapInputValue<DestinationConfig, Map<String, dynamic>>(destinationConfig, (value) => value.toMap()),
      'enableBackendDestinationConfig': ?enableBackendDestinationConfig,
      'labels': ?labels,
      'project': ?project,
      'specLocation': ?specLocation,
      'type': pulumi.Input.mapInputValue<CustomConnectorVersionType, String>(type, (value) => value.wireValue),
    };
  }

  factory CustomConnectorVersionArgs.fromMap(Map<String, dynamic> map) {
    return CustomConnectorVersionArgs(
      authConfig: pulumi.Input.fromValue(AuthConfig.fromMap((map['authConfig']! as Map).cast<String, dynamic>())),
      customConnectorId: pulumi.Input.fromValue(map['customConnectorId'] as String),
      customConnectorVersionId: pulumi.Input.fromValue(map['customConnectorVersionId'] as String),
      destinationConfig: pulumi.Input.fromValue(DestinationConfig.fromMap((map['destinationConfig']! as Map).cast<String, dynamic>())),
      enableBackendDestinationConfig: (() { final guardedValue = map['enableBackendDestinationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      specLocation: (() { final guardedValue = map['specLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(CustomConnectorVersionType.fromValue(map['type']! as String)),
    );
  }
}

