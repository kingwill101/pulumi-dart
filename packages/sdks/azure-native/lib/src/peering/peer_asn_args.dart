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
    pulumi.Output<int>? peerAsn,
    pulumi.Output<String>? peerAsnName,
    pulumi.Output<List<ContactDetail>>? peerContactDetail,
    pulumi.Output<String>? peerName,
  }) :
      peerAsn = pulumi.Input.asOptionalInput<int>(peerAsn),
      peerAsnName = pulumi.Input.asOptionalInput<String>(peerAsnName),
      peerContactDetail = pulumi.Input.asOptionalInput<List<ContactDetail>>(peerContactDetail),
      peerName = pulumi.Input.asOptionalInput<String>(peerName);

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
      peerAsn: map['peerAsn'] == null ? null : pulumi.Output.create<int>(map['peerAsn'] as int),
      peerAsnName: map['peerAsnName'] == null ? null : pulumi.Output.create<String>(map['peerAsnName'] as String),
      peerContactDetail: map['peerContactDetail'] == null ? null : pulumi.Output.create<List<ContactDetail>>(pulumi.Input.decodeList<ContactDetail>(map['peerContactDetail'], (value) => ContactDetail.fromMap((value as Map).cast<String, dynamic>()))),
      peerName: map['peerName'] == null ? null : pulumi.Output.create<String>(map['peerName'] as String),
    );
  }
}

