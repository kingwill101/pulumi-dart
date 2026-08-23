// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_vpn_tunnel_compute_beta_args_doc}
/// Arguments for getVpnTunnel.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_vpn_tunnel_compute_beta_args_doc}
class GetVpnTunnelComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnTunnel;

  /// Creates a new [GetVpnTunnelComputeBetaArgs].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnTunnel] Required.
  const GetVpnTunnelComputeBetaArgs({
    this.project,
    required this.region,
    required this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'vpnTunnel': vpnTunnel,
    };
  }

  factory GetVpnTunnelComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelComputeBetaArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      vpnTunnel: pulumi.Input.fromValue(map['vpnTunnel'] as String),
    );
  }
}
