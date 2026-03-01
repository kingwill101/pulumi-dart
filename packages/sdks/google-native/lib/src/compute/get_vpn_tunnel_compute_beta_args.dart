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
  GetVpnTunnelComputeBetaArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
    required pulumi.Output<String> vpnTunnel,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      vpnTunnel = pulumi.Input.asInput<String>(vpnTunnel);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': region,
      'vpnTunnel': vpnTunnel,
    };
  }

  factory GetVpnTunnelComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      vpnTunnel: pulumi.Output.create<String>(map['vpnTunnel'] as String),
    );
  }
}

