// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMagicWanIpsecTunnelIpsecTunnelBgpStatus {
  final pulumi.Input<String> bgpState;
  final pulumi.Input<String> cfSpeakerIp;
  final pulumi.Input<int> cfSpeakerPort;
  final pulumi.Input<String> customerSpeakerIp;
  final pulumi.Input<int> customerSpeakerPort;
  /// Available values: "BGP*DOWN", "BGP*UP", "BGP_ESTABLISHING".
  final pulumi.Input<String> state;
  final pulumi.Input<bool> tcpEstablished;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetMagicWanIpsecTunnelIpsecTunnelBgpStatus].
  /// [bgpState] Required.
  /// [cfSpeakerIp] Required.
  /// [cfSpeakerPort] Required.
  /// [customerSpeakerIp] Required.
  /// [customerSpeakerPort] Required.
  /// [state] Available values: "BGP*DOWN", "BGP*UP", "BGP_ESTABLISHING".
  /// [tcpEstablished] Required.
  /// [updatedAt] Required.
  const GetMagicWanIpsecTunnelIpsecTunnelBgpStatus({
    required this.bgpState,
    required this.cfSpeakerIp,
    required this.cfSpeakerPort,
    required this.customerSpeakerIp,
    required this.customerSpeakerPort,
    required this.state,
    required this.tcpEstablished,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpState': bgpState,
      'cfSpeakerIp': cfSpeakerIp,
      'cfSpeakerPort': cfSpeakerPort,
      'customerSpeakerIp': customerSpeakerIp,
      'customerSpeakerPort': customerSpeakerPort,
      'state': state,
      'tcpEstablished': tcpEstablished,
      'updatedAt': updatedAt,
    };
  }

  factory GetMagicWanIpsecTunnelIpsecTunnelBgpStatus.fromMap(Map<String, dynamic> map) {
    return GetMagicWanIpsecTunnelIpsecTunnelBgpStatus(
      bgpState: pulumi.Input.fromValue(map['bgpState'] as String),
      cfSpeakerIp: pulumi.Input.fromValue(map['cfSpeakerIp'] as String),
      cfSpeakerPort: pulumi.Input.fromValue((map['cfSpeakerPort'] as num).toInt()),
      customerSpeakerIp: pulumi.Input.fromValue(map['customerSpeakerIp'] as String),
      customerSpeakerPort: pulumi.Input.fromValue((map['customerSpeakerPort'] as num).toInt()),
      state: pulumi.Input.fromValue(map['state'] as String),
      tcpEstablished: pulumi.Input.fromValue(map['tcpEstablished'] as bool),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
