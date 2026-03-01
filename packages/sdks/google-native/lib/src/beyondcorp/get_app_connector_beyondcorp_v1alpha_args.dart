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
    required pulumi.Output<String> appConnectorId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      appConnectorId = pulumi.Input.asInput<String>(appConnectorId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectorId': appConnectorId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAppConnectorBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorBeyondcorpV1alphaArgs(
      appConnectorId: pulumi.Output.create<String>(map['appConnectorId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

