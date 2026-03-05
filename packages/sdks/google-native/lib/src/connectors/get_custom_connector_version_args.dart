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
    required this.customConnectorId,
    required this.customConnectorVersionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConnectorId': customConnectorId,
      'customConnectorVersionId': customConnectorVersionId,
      'project': ?project,
    };
  }

  factory GetCustomConnectorVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorVersionArgs(
      customConnectorId: pulumi.Input.fromValue(map['customConnectorId'] as String),
      customConnectorVersionId: pulumi.Input.fromValue(map['customConnectorVersionId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

