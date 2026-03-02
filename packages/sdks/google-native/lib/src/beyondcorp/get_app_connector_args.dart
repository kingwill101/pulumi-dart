// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_connector_args_doc}
/// Arguments for getAppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_connector_args_doc}
class GetAppConnectorArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectorArgs].
  /// [appConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectorArgs({
    required this.appConnectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectorId': appConnectorId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorArgs(
      appConnectorId: (map['appConnectorId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

