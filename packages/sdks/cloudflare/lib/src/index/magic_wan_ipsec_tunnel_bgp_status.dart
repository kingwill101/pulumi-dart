// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MagicWanIpsecTunnelBgpStatus {
  final pulumi.Input<String?>? bgpState;
  final pulumi.Input<String?>? cfSpeakerIp;
  final pulumi.Input<int?>? cfSpeakerPort;
  final pulumi.Input<String?>? customerSpeakerIp;
  final pulumi.Input<int?>? customerSpeakerPort;
  /// Available values: "BGP*DOWN", "BGP*UP", "BGP_ESTABLISHING".
  final pulumi.Input<String?>? state;
  final pulumi.Input<bool?>? tcpEstablished;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [MagicWanIpsecTunnelBgpStatus].
  /// [bgpState] Optional.
  /// [cfSpeakerIp] Optional.
  /// [cfSpeakerPort] Optional.
  /// [customerSpeakerIp] Optional.
  /// [customerSpeakerPort] Optional.
  /// [state] Available values: "BGP*DOWN", "BGP*UP", "BGP_ESTABLISHING".
  /// [tcpEstablished] Optional.
  /// [updatedAt] Optional.
  const MagicWanIpsecTunnelBgpStatus({
    this.bgpState,
    this.cfSpeakerIp,
    this.cfSpeakerPort,
    this.customerSpeakerIp,
    this.customerSpeakerPort,
    this.state,
    this.tcpEstablished,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpState': ?bgpState,
      'cfSpeakerIp': ?cfSpeakerIp,
      'cfSpeakerPort': ?cfSpeakerPort,
      'customerSpeakerIp': ?customerSpeakerIp,
      'customerSpeakerPort': ?customerSpeakerPort,
      'state': ?state,
      'tcpEstablished': ?tcpEstablished,
      'updatedAt': ?updatedAt,
    };
  }

  factory MagicWanIpsecTunnelBgpStatus.fromMap(Map<String, dynamic> map) {
    return MagicWanIpsecTunnelBgpStatus(
      bgpState: (() { final guardedValue = map['bgpState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cfSpeakerIp: (() { final guardedValue = map['cfSpeakerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cfSpeakerPort: (() { final guardedValue = map['cfSpeakerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      customerSpeakerIp: (() { final guardedValue = map['customerSpeakerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerSpeakerPort: (() { final guardedValue = map['customerSpeakerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpEstablished: (() { final guardedValue = map['tcpEstablished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
