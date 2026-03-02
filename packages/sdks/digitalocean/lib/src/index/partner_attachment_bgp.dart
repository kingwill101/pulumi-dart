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
  PartnerAttachmentBgp({
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
      authKey: map['authKey'] == null ? null : (map['authKey']! as String).input(),
      localRouterIp: map['localRouterIp'] == null ? null : (map['localRouterIp']! as String).input(),
      peerRouterAsn: map['peerRouterAsn'] == null ? null : (map['peerRouterAsn']! as int).input(),
      peerRouterIp: map['peerRouterIp'] == null ? null : (map['peerRouterIp']! as String).input(),
    );
  }
}

