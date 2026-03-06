// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_get_peer_asn_args_doc}
/// Arguments for getPeerAsn.
/// {@endtemplate}
/// {@macro pulumi_peering_get_peer_asn_args_doc}
class GetPeerAsnArgs {
  /// The peer ASN name.
  final pulumi.Input<String> peerAsnName;

  /// Creates a new [GetPeerAsnArgs].
  /// [peerAsnName] The peer ASN name.
  const GetPeerAsnArgs({
    required this.peerAsnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerAsnName': peerAsnName,
    };
  }

  factory GetPeerAsnArgs.fromMap(Map<String, dynamic> map) {
    return GetPeerAsnArgs(
      peerAsnName: pulumi.Input.fromValue(map['peerAsnName'] as String),
    );
  }
}

