// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_connector_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_connector_beyondcorp_v1alpha_args_doc}
class GetAppConnectorBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appConnectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppConnectorBeyondcorpV1alphaArgs].
  /// [appConnectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppConnectorBeyondcorpV1alphaArgs({
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

  factory GetAppConnectorBeyondcorpV1alphaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppConnectorBeyondcorpV1alphaArgs(
      appConnectorId: pulumi.Input.fromValue(map['appConnectorId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
