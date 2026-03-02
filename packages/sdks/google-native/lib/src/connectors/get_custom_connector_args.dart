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
  GetCustomConnectorArgs({
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
      customConnectorId: (map['customConnectorId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

