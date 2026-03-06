// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For display only. Metadata associated with a Compute Engine VPN tunnel.
class VpnTunnelInfoResponse {
  /// Name of a VPN tunnel.
  final pulumi.Input<String> displayName;
  /// URI of a Compute Engine network where the VPN tunnel is configured.
  final pulumi.Input<String> networkUri;
  /// Name of a Google Cloud region where this VPN tunnel is configured.
  final pulumi.Input<String> region;
  /// URI of a VPN gateway at remote end of the tunnel.
  final pulumi.Input<String> remoteGateway;
  /// Remote VPN gateway's IP address.
  final pulumi.Input<String> remoteGatewayIp;
  /// Type of the routing policy.
  final pulumi.Input<String> routingType;
  /// URI of the VPN gateway at local end of the tunnel.
  final pulumi.Input<String> sourceGateway;
  /// Local VPN gateway's IP address.
  final pulumi.Input<String> sourceGatewayIp;
  /// URI of a VPN tunnel.
  final pulumi.Input<String> uri;

  /// Creates a new [VpnTunnelInfoResponse].
  /// [displayName] Name of a VPN tunnel.
  /// [networkUri] URI of a Compute Engine network where the VPN tunnel is configured.
  /// [region] Name of a Google Cloud region where this VPN tunnel is configured.
  /// [remoteGateway] URI of a VPN gateway at remote end of the tunnel.
  /// [remoteGatewayIp] Remote VPN gateway's IP address.
  /// [routingType] Type of the routing policy.
  /// [sourceGateway] URI of the VPN gateway at local end of the tunnel.
  /// [sourceGatewayIp] Local VPN gateway's IP address.
  /// [uri] URI of a VPN tunnel.
  const VpnTunnelInfoResponse({
    required this.displayName,
    required this.networkUri,
    required this.region,
    required this.remoteGateway,
    required this.remoteGatewayIp,
    required this.routingType,
    required this.sourceGateway,
    required this.sourceGatewayIp,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'networkUri': networkUri,
      'region': region,
      'remoteGateway': remoteGateway,
      'remoteGatewayIp': remoteGatewayIp,
      'routingType': routingType,
      'sourceGateway': sourceGateway,
      'sourceGatewayIp': sourceGatewayIp,
      'uri': uri,
    };
  }

  factory VpnTunnelInfoResponse.fromMap(Map<String, dynamic> map) {
    return VpnTunnelInfoResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      networkUri: pulumi.Input.fromValue(map['networkUri'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      remoteGateway: pulumi.Input.fromValue(map['remoteGateway'] as String),
      remoteGatewayIp: pulumi.Input.fromValue(map['remoteGatewayIp'] as String),
      routingType: pulumi.Input.fromValue(map['routingType'] as String),
      sourceGateway: pulumi.Input.fromValue(map['sourceGateway'] as String),
      sourceGatewayIp: pulumi.Input.fromValue(map['sourceGatewayIp'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

