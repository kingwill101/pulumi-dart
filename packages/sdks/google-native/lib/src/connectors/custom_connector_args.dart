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
      'customConnectorType': pulumi.Input.mapInputValue<CustomConnectorCustomConnectorType, String>(customConnectorType, (value) => value.value),
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
      customConnectorId: (map['customConnectorId'] as String).input(),
      customConnectorType: (CustomConnectorCustomConnectorType.fromValue(map['customConnectorType'] as String)).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      logo: map['logo'] == null ? null : (map['logo'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

