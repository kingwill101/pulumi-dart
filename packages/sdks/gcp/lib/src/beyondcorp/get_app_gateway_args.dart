// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_app_gateway_get_app_gateway_args_doc}
/// Arguments for getAppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_app_gateway_get_app_gateway_args_doc}
class GetAppGatewayArgs {
  /// The name of the App Gateway.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAppGatewayArgs].
  /// [name] The name of the App Gateway.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetAppGatewayArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGatewayArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

