// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_custom_connector_version_args_doc}
/// Arguments for getCustomConnectorVersion.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_custom_connector_version_args_doc}
class GetCustomConnectorVersionArgs {
  final pulumi.Input<String> customConnectorId;
  final pulumi.Input<String> customConnectorVersionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomConnectorVersionArgs].
  /// [customConnectorId] Required.
  /// [customConnectorVersionId] Required.
  /// [project] Optional.
  GetCustomConnectorVersionArgs({
    required pulumi.Output<String> customConnectorId,
    required pulumi.Output<String> customConnectorVersionId,
    pulumi.Output<String>? project,
  }) :
      customConnectorId = pulumi.Input.asInput<String>(customConnectorId),
      customConnectorVersionId = pulumi.Input.asInput<String>(customConnectorVersionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConnectorId': customConnectorId,
      'customConnectorVersionId': customConnectorVersionId,
      'project': ?project,
    };
  }

  factory GetCustomConnectorVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorVersionArgs(
      customConnectorId: pulumi.Output.create<String>(map['customConnectorId'] as String),
      customConnectorVersionId: pulumi.Output.create<String>(map['customConnectorVersionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

