// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_detail.dart';

/// {@template pulumi_peering_peer_asn_args_doc}
/// The set of arguments for PeerAsn.
/// {@endtemplate}
/// {@macro pulumi_peering_peer_asn_args_doc}
class PeerAsnArgs {
  /// The Autonomous System Number (ASN) of the peer.
  final pulumi.Input<int>? peerAsn;
  /// The peer ASN name.
  final pulumi.Input<String>? peerAsnName;
  /// The contact details of the peer.
  final pulumi.Input<List<ContactDetail>>? peerContactDetail;
  /// The name of the peer.
  final pulumi.Input<String>? peerName;

  /// Creates a new [PeerAsnArgs].
  /// [peerAsn] The Autonomous System Number (ASN) of the peer.
  /// [peerAsnName] The peer ASN name.
  /// [peerContactDetail] The contact details of the peer.
  /// [peerName] The name of the peer.
  PeerAsnArgs({
    this.peerAsn,
    this.peerAsnName,
    this.peerContactDetail,
    this.peerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAsn': ?peerAsn,
      'peerAsnName': ?peerAsnName,
      'peerContactDetail': ?pulumi.Input.mapOptionalInputValue<List<ContactDetail>, List<Map<String, dynamic>>>(peerContactDetail, (value) => pulumi.Input.encodeList<ContactDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerName': ?peerName,
    };
  }

  factory PeerAsnArgs.fromMap(Map<String, dynamic> map) {
    return PeerAsnArgs(
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      peerAsnName: (() { final guardedValue = map['peerAsnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerContactDetail: (() { final guardedValue = map['peerContactDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContactDetail>(guardedValue, (value) => ContactDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      peerName: (() { final guardedValue = map['peerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

