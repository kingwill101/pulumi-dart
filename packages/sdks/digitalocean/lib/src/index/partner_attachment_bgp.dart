// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PartnerAttachmentBgp {
  final pulumi.Input<String>? authKey;
  final pulumi.Input<String>? localRouterIp;
  final pulumi.Input<int>? peerRouterAsn;
  final pulumi.Input<String>? peerRouterIp;

  /// Creates a new [PartnerAttachmentBgp].
  /// [authKey] Optional.
  /// [localRouterIp] Optional.
  /// [peerRouterAsn] Optional.
  /// [peerRouterIp] Optional.
  const PartnerAttachmentBgp({
    this.authKey,
    this.localRouterIp,
    this.peerRouterAsn,
    this.peerRouterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey': ?authKey,
      'localRouterIp': ?localRouterIp,
      'peerRouterAsn': ?peerRouterAsn,
      'peerRouterIp': ?peerRouterIp,
    };
  }

  factory PartnerAttachmentBgp.fromMap(Map<String, dynamic> map) {
    return PartnerAttachmentBgp(
      authKey: (() { final guardedValue = map['authKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localRouterIp: (() { final guardedValue = map['localRouterIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRouterAsn: (() { final guardedValue = map['peerRouterAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerRouterIp: (() { final guardedValue = map['peerRouterIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

