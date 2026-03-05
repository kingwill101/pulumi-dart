// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_connector_custom_connector_type.dart';

/// {@template pulumi_connectors_v1_custom_connector_args_doc}
/// The set of arguments for CustomConnector.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_custom_connector_args_doc}
class CustomConnectorArgs {
  /// Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  final pulumi.Input<String> customConnectorId;
  /// Type of the custom connector.
  final pulumi.Input<CustomConnectorCustomConnectorType> customConnectorType;
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;
  /// Optional. Display name.
  final pulumi.Input<String>? displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  /// Optional. Logo of the resource.
  final pulumi.Input<String>? logo;
  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomConnectorArgs].
  /// [customConnectorId] Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  /// [customConnectorType] Type of the custom connector.
  /// [description] Optional. Description of the resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [logo] Optional. Logo of the resource.
  /// [name] Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  /// [project] Optional.
  CustomConnectorArgs({
    required this.customConnectorId,
    required this.customConnectorType,
    this.description,
    this.displayName,
    this.labels,
    this.logo,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConnectorId': customConnectorId,
      'customConnectorType': pulumi.Input.mapInputValue<CustomConnectorCustomConnectorType, String>(customConnectorType, (value) => value.wireValue),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'logo': ?logo,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CustomConnectorArgs.fromMap(Map<String, dynamic> map) {
    return CustomConnectorArgs(
      customConnectorId: pulumi.Input.fromValue(map['customConnectorId'] as String),
      customConnectorType: pulumi.Input.fromValue(CustomConnectorCustomConnectorType.fromValue(map['customConnectorType']! as String)),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      logo: (() { final guardedValue = map['logo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

