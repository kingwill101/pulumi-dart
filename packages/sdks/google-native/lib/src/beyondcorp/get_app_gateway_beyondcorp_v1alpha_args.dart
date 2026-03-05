// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1alpha_get_app_gateway_beyondcorp_v1alpha_args_doc}
/// Arguments for getAppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_get_app_gateway_beyondcorp_v1alpha_args_doc}
class GetAppGatewayBeyondcorpV1alphaArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppGatewayBeyondcorpV1alphaArgs].
  /// [appGatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppGatewayBeyondcorpV1alphaArgs({
    required this.appGatewayId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appGatewayId': appGatewayId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAppGatewayBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayBeyondcorpV1alphaArgs(
      appGatewayId: pulumi.Input.fromValue(map['appGatewayId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

