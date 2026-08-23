// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPartnerAttachmentBgp {
  final pulumi.Input<String>? localRouterIp;
  final pulumi.Input<int>? peerRouterAsn;
  final pulumi.Input<String>? peerRouterIp;

  /// Creates a new [GetPartnerAttachmentBgp].
  /// [localRouterIp] Optional.
  /// [peerRouterAsn] Optional.
  /// [peerRouterIp] Optional.
  const GetPartnerAttachmentBgp({
    this.localRouterIp,
    this.peerRouterAsn,
    this.peerRouterIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRouterIp': ?localRouterIp,
      'peerRouterAsn': ?peerRouterAsn,
      'peerRouterIp': ?peerRouterIp,
    };
  }

  factory GetPartnerAttachmentBgp.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentBgp(
      localRouterIp: (() { final guardedValue = map['localRouterIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRouterAsn: (() { final guardedValue = map['peerRouterAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerRouterIp: (() { final guardedValue = map['peerRouterIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
