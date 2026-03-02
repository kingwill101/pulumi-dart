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
  GetPartnerAttachmentBgp({
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
      localRouterIp: map['localRouterIp'] == null ? null : (map['localRouterIp']! as String).input(),
      peerRouterAsn: map['peerRouterAsn'] == null ? null : (map['peerRouterAsn']! as int).input(),
      peerRouterIp: map['peerRouterIp'] == null ? null : (map['peerRouterIp']! as String).input(),
    );
  }
}

