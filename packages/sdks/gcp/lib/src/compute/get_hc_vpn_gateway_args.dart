// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_hc_vpn_gateway_get_hc_vpn_gateway_args_doc}
/// Arguments for getHcVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_compute_get_hc_vpn_gateway_get_hc_vpn_gateway_args_doc}
class GetHcVpnGatewayArgs {
  /// The name of the forwarding rule.
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

  /// Creates a new [GetHcVpnGatewayArgs].
  /// [name] The name of the forwarding rule.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetHcVpnGatewayArgs({
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

  factory GetHcVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetHcVpnGatewayArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

