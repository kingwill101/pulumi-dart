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
    required pulumi.Output<String> customConnectorId,
    required pulumi.Output<CustomConnectorCustomConnectorType> customConnectorType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? logo,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      customConnectorId = pulumi.Input.asInput<String>(customConnectorId),
      customConnectorType = pulumi.Input.asInput<CustomConnectorCustomConnectorType>(customConnectorType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      logo = pulumi.Input.asOptionalInput<String>(logo),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      customConnectorId: pulumi.Output.create<String>(map['customConnectorId'] as String),
      customConnectorType: pulumi.Output.create<CustomConnectorCustomConnectorType>(CustomConnectorCustomConnectorType.fromValue(map['customConnectorType'] as String)),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      logo: map['logo'] == null ? null : pulumi.Output.create<String>(map['logo'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

