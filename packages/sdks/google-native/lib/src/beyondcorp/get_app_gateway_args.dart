// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_v1_get_app_gateway_args_doc}
/// Arguments for getAppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_get_app_gateway_args_doc}
class GetAppGatewayArgs {
  final pulumi.Input<String> appGatewayId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAppGatewayArgs].
  /// [appGatewayId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAppGatewayArgs({
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

  factory GetAppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayArgs(
      appGatewayId: (map['appGatewayId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

