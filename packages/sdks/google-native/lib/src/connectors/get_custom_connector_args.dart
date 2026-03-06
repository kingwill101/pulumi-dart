// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_custom_connector_args_doc}
/// Arguments for getCustomConnector.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_custom_connector_args_doc}
class GetCustomConnectorArgs {
  final pulumi.Input<String> customConnectorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCustomConnectorArgs].
  /// [customConnectorId] Required.
  /// [project] Optional.
  const GetCustomConnectorArgs({
    required this.customConnectorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConnectorId': customConnectorId,
      'project': ?project,
    };
  }

  factory GetCustomConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorArgs(
      customConnectorId: pulumi.Input.fromValue(map['customConnectorId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

