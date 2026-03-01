// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_vpn_tunnel_compute_v1_args_doc}
/// Arguments for getVpnTunnel.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_vpn_tunnel_compute_v1_args_doc}
class GetVpnTunnelComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> vpnTunnel;

  /// Creates a new [GetVpnTunnelComputeV1Args].
  /// [project] Optional.
  /// [region] Required.
  /// [vpnTunnel] Required.
  GetVpnTunnelComputeV1Args({
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

  factory GetVpnTunnelComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetVpnTunnelComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      vpnTunnel: pulumi.Output.create<String>(map['vpnTunnel'] as String),
    );
  }
}

