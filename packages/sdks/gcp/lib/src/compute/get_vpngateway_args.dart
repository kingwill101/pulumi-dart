// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_vpngateway_get_vpngateway_args_doc}
/// Arguments for getVPNGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_get_vpngateway_get_vpngateway_args_doc}
class GetVPNGatewayArgs {
  /// The name of the VPN gateway.
  ///
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the project region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVPNGatewayArgs].
  /// [name] The name of the VPN gateway.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetVPNGatewayArgs({
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

  factory GetVPNGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVPNGatewayArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

