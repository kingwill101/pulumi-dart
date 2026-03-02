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
  VpnClientConnectionHealthDetailResponse({
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
      egressBytesTransferred: (map['egressBytesTransferred'] as double).input(),
      egressPacketsTransferred: (map['egressPacketsTransferred'] as double).input(),
      ingressBytesTransferred: (map['ingressBytesTransferred'] as double).input(),
      ingressPacketsTransferred: (map['ingressPacketsTransferred'] as double).input(),
      maxBandwidth: (map['maxBandwidth'] as double).input(),
      maxPacketsPerSecond: (map['maxPacketsPerSecond'] as double).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
      vpnConnectionDuration: (map['vpnConnectionDuration'] as double).input(),
      vpnConnectionId: (map['vpnConnectionId'] as String).input(),
      vpnConnectionTime: (map['vpnConnectionTime'] as String).input(),
      vpnUserName: (map['vpnUserName'] as String).input(),
    );
  }
}

