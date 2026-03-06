// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine VPN gateway.
class VpnGatewayInfoResponse {
  /// Name of a VPN gateway.
  final pulumi.Input<String> displayName;
  /// IP address of the VPN gateway.
  final pulumi.Input<String> ipAddress;
  /// URI of a Compute Engine network where the VPN gateway is configured.
  final pulumi.Input<String> networkUri;
  /// Name of a Google Cloud region where this VPN gateway is configured.
  final pulumi.Input<String> region;
  /// URI of a VPN gateway.
  final pulumi.Input<String> uri;
  /// A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configured on a VPN gateway, and only the one relevant to the test is displayed.
  final pulumi.Input<String> vpnTunnelUri;

  /// Creates a new [VpnGatewayInfoResponse].
  /// [displayName] Name of a VPN gateway.
  /// [ipAddress] IP address of the VPN gateway.
  /// [networkUri] URI of a Compute Engine network where the VPN gateway is configured.
  /// [region] Name of a Google Cloud region where this VPN gateway is configured.
  /// [uri] URI of a VPN gateway.
  /// [vpnTunnelUri] A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configured on a VPN gateway, and only the one relevant to the test is displayed.
  const VpnGatewayInfoResponse({
    required this.displayName,
    required this.ipAddress,
    required this.networkUri,
    required this.region,
    required this.uri,
    required this.vpnTunnelUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'ipAddress': ipAddress,
      'networkUri': networkUri,
      'region': region,
      'uri': uri,
      'vpnTunnelUri': vpnTunnelUri,
    };
  }

  factory VpnGatewayInfoResponse.fromMap(Map<String, dynamic> map) {
    return VpnGatewayInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      vpnTunnelUri: pulumi.Input.fromValue(map['vpnTunnelUri'] as String),
    );
  }
}

