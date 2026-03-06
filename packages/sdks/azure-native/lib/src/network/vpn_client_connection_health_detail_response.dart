// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPN client connection health detail.
class VpnClientConnectionHealthDetailResponse {
  /// The egress bytes per second.
  final pulumi.Input<double> egressBytesTransferred;
  /// The egress packets per second.
  final pulumi.Input<double> egressPacketsTransferred;
  /// The ingress bytes per second.
  final pulumi.Input<double> ingressBytesTransferred;
  /// The ingress packets per second.
  final pulumi.Input<double> ingressPacketsTransferred;
  /// The max band width.
  final pulumi.Input<double> maxBandwidth;
  /// The max packets transferred per second.
  final pulumi.Input<double> maxPacketsPerSecond;
  /// The assigned private Ip of a connected vpn client.
  final pulumi.Input<String> privateIpAddress;
  /// The public Ip of a connected vpn client.
  final pulumi.Input<String> publicIpAddress;
  /// The duration time of a connected vpn client.
  final pulumi.Input<double> vpnConnectionDuration;
  /// The vpn client Id.
  final pulumi.Input<String> vpnConnectionId;
  /// The start time of a connected vpn client.
  final pulumi.Input<String> vpnConnectionTime;
  /// The user name of a connected vpn client.
  final pulumi.Input<String> vpnUserName;

  /// Creates a new [VpnClientConnectionHealthDetailResponse].
  /// [egressBytesTransferred] The egress bytes per second.
  /// [egressPacketsTransferred] The egress packets per second.
  /// [ingressBytesTransferred] The ingress bytes per second.
  /// [ingressPacketsTransferred] The ingress packets per second.
  /// [maxBandwidth] The max band width.
  /// [maxPacketsPerSecond] The max packets transferred per second.
  /// [privateIpAddress] The assigned private Ip of a connected vpn client.
  /// [publicIpAddress] The public Ip of a connected vpn client.
  /// [vpnConnectionDuration] The duration time of a connected vpn client.
  /// [vpnConnectionId] The vpn client Id.
  /// [vpnConnectionTime] The start time of a connected vpn client.
  /// [vpnUserName] The user name of a connected vpn client.
  const VpnClientConnectionHealthDetailResponse({
    required this.egressBytesTransferred,
    required this.egressPacketsTransferred,
    required this.ingressBytesTransferred,
    required this.ingressPacketsTransferred,
    required this.maxBandwidth,
    required this.maxPacketsPerSecond,
    required this.privateIpAddress,
    required this.publicIpAddress,
    required this.vpnConnectionDuration,
    required this.vpnConnectionId,
    required this.vpnConnectionTime,
    required this.vpnUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressBytesTransferred': egressBytesTransferred,
      'egressPacketsTransferred': egressPacketsTransferred,
      'ingressBytesTransferred': ingressBytesTransferred,
      'ingressPacketsTransferred': ingressPacketsTransferred,
      'maxBandwidth': maxBandwidth,
      'maxPacketsPerSecond': maxPacketsPerSecond,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
      'vpnConnectionDuration': vpnConnectionDuration,
      'vpnConnectionId': vpnConnectionId,
      'vpnConnectionTime': vpnConnectionTime,
      'vpnUserName': vpnUserName,
    };
  }

  factory VpnClientConnectionHealthDetailResponse.fromMap(Map<String, dynamic> map) {
    return VpnClientConnectionHealthDetailResponse(
      egressBytesTransferred: pulumi.Input.fromValue(map['egressBytesTransferred'] as double),
      egressPacketsTransferred: pulumi.Input.fromValue(map['egressPacketsTransferred'] as double),
      ingressBytesTransferred: pulumi.Input.fromValue(map['ingressBytesTransferred'] as double),
      ingressPacketsTransferred: pulumi.Input.fromValue(map['ingressPacketsTransferred'] as double),
      maxBandwidth: pulumi.Input.fromValue(map['maxBandwidth'] as double),
      maxPacketsPerSecond: pulumi.Input.fromValue(map['maxPacketsPerSecond'] as double),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      publicIpAddress: pulumi.Input.fromValue(map['publicIpAddress'] as String),
      vpnConnectionDuration: pulumi.Input.fromValue(map['vpnConnectionDuration'] as double),
      vpnConnectionId: pulumi.Input.fromValue(map['vpnConnectionId'] as String),
      vpnConnectionTime: pulumi.Input.fromValue(map['vpnConnectionTime'] as String),
      vpnUserName: pulumi.Input.fromValue(map['vpnUserName'] as String),
    );
  }
}

