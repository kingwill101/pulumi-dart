// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_vpn_tunnel_args_doc}
/// The set of arguments for VpnTunnel.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_vpn_tunnel_args_doc}
class VpnTunnelArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// IKE protocol version to use when establishing the VPN tunnel with the peer VPN gateway. Acceptable IKE versions are 1 or 2. The default version is 2.
  final pulumi.Input<int>? ikeVersion;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Local traffic selector to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges must be disjoint. Only IPv4 is supported.
  final pulumi.Input<List<String>>? localTrafficSelector;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// URL of the peer side external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field is exclusive with the field peerGcpGateway.
  final pulumi.Input<String>? peerExternalGateway;
  /// The interface ID of the external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. Possible values are: `0`, `1`, `2`, `3`. The number of IDs in use depends on the external VPN gateway redundancy type.
  final pulumi.Input<int>? peerExternalGatewayInterface;
  /// URL of the peer side HA VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field can be used when creating highly available VPN from VPC network to VPC network, the field is exclusive with the field peerExternalGateway. If provided, the VPN tunnel will automatically use the same vpnGatewayInterface ID in the peer Google Cloud VPN gateway.
  final pulumi.Input<String>? peerGcpGateway;
  /// IP address of the peer VPN gateway. Only IPv4 is supported.
  final pulumi.Input<String>? peerIp;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// Remote traffic selectors to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported.
  final pulumi.Input<List<String>>? remoteTrafficSelector;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL of the router resource to be used for dynamic routing.
  final pulumi.Input<String>? router;
  /// Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
  final pulumi.Input<String>? sharedSecret;
  /// Hash of the shared secret.
  final pulumi.Input<String>? sharedSecretHash;
  /// URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created.
  final pulumi.Input<String>? targetVpnGateway;
  /// URL of the VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. This must be used (instead of target_vpn_gateway) if a High Availability VPN gateway resource is created.
  final pulumi.Input<String>? vpnGateway;
  /// The interface ID of the VPN gateway with which this VPN tunnel is associated. Possible values are: `0`, `1`.
  final pulumi.Input<int>? vpnGatewayInterface;

  /// Creates a new [VpnTunnelArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [ikeVersion] IKE protocol version to use when establishing the VPN tunnel with the peer VPN gateway. Acceptable IKE versions are 1 or 2. The default version is 2.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [localTrafficSelector] Local traffic selector to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges must be disjoint. Only IPv4 is supported.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerExternalGateway] URL of the peer side external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field is exclusive with the field peerGcpGateway.
  /// [peerExternalGatewayInterface] The interface ID of the external VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. Possible values are: `0`, `1`, `2`, `3`. The number of IDs in use depends on the external VPN gateway redundancy type.
  /// [peerGcpGateway] URL of the peer side HA VPN gateway to which this VPN tunnel is connected. Provided by the client when the VPN tunnel is created. This field can be used when creating highly available VPN from VPC network to VPC network, the field is exclusive with the field peerExternalGateway. If provided, the VPN tunnel will automatically use the same vpnGatewayInterface ID in the peer Google Cloud VPN gateway.
  /// [peerIp] IP address of the peer VPN gateway. Only IPv4 is supported.
  /// [project] Optional.
  /// [region] Required.
  /// [remoteTrafficSelector] Remote traffic selectors to use when establishing the VPN tunnel with the peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [router] URL of the router resource to be used for dynamic routing.
  /// [sharedSecret] Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
  /// [sharedSecretHash] Hash of the shared secret.
  /// [targetVpnGateway] URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created.
  /// [vpnGateway] URL of the VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. This must be used (instead of target_vpn_gateway) if a High Availability VPN gateway resource is created.
  /// [vpnGatewayInterface] The interface ID of the VPN gateway with which this VPN tunnel is associated. Possible values are: `0`, `1`.
  const VpnTunnelArgs({
    this.description,
    this.ikeVersion,
    this.labels,
    this.localTrafficSelector,
    this.name,
    this.peerExternalGateway,
    this.peerExternalGatewayInterface,
    this.peerGcpGateway,
    this.peerIp,
    this.project,
    required this.region,
    this.remoteTrafficSelector,
    this.requestId,
    this.router,
    this.sharedSecret,
    this.sharedSecretHash,
    this.targetVpnGateway,
    this.vpnGateway,
    this.vpnGatewayInterface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ikeVersion': ?ikeVersion,
      'labels': ?labels,
      'localTrafficSelector': ?localTrafficSelector,
      'name': ?name,
      'peerExternalGateway': ?peerExternalGateway,
      'peerExternalGatewayInterface': ?peerExternalGatewayInterface,
      'peerGcpGateway': ?peerGcpGateway,
      'peerIp': ?peerIp,
      'project': ?project,
      'region': region,
      'remoteTrafficSelector': ?remoteTrafficSelector,
      'requestId': ?requestId,
      'router': ?router,
      'sharedSecret': ?sharedSecret,
      'sharedSecretHash': ?sharedSecretHash,
      'targetVpnGateway': ?targetVpnGateway,
      'vpnGateway': ?vpnGateway,
      'vpnGatewayInterface': ?vpnGatewayInterface,
    };
  }

  factory VpnTunnelArgs.fromMap(Map<String, dynamic> map) {
    return VpnTunnelArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ikeVersion: (() { final guardedValue = map['ikeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      localTrafficSelector: (() { final guardedValue = map['localTrafficSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerExternalGateway: (() { final guardedValue = map['peerExternalGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerExternalGatewayInterface: (() { final guardedValue = map['peerExternalGatewayInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerGcpGateway: (() { final guardedValue = map['peerGcpGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIp: (() { final guardedValue = map['peerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      remoteTrafficSelector: (() { final guardedValue = map['remoteTrafficSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      router: (() { final guardedValue = map['router']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedSecret: (() { final guardedValue = map['sharedSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedSecretHash: (() { final guardedValue = map['sharedSecretHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVpnGateway: (() { final guardedValue = map['targetVpnGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGateway: (() { final guardedValue = map['vpnGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayInterface: (() { final guardedValue = map['vpnGatewayInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
