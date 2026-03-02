// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_connection.dart';
import 'sub_resource.dart';

/// The properties that define a direct peering.
class PeeringPropertiesDirect {
  /// The set of connections that constitute a direct peering.
  final pulumi.Input<List<DirectConnection>>? connections;
  /// The type of direct peering.
  final pulumi.Input<String>? directPeeringType;
  /// The reference of the peer ASN.
  final pulumi.Input<SubResource>? peerAsn;

  /// Creates a new [PeeringPropertiesDirect].
  /// [connections] The set of connections that constitute a direct peering.
  /// [directPeeringType] The type of direct peering.
  /// [peerAsn] The reference of the peer ASN.
  PeeringPropertiesDirect({
    this.connections,
    this.directPeeringType,
    this.peerAsn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<DirectConnection>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<DirectConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'directPeeringType': ?directPeeringType,
      'peerAsn': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(peerAsn, (value) => value.toMap()),
    };
  }

  factory PeeringPropertiesDirect.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesDirect(
      connections: map['connections'] == null ? null : (pulumi.Input.decodeList<DirectConnection>(map['connections']!, (value) => DirectConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
      directPeeringType: map['directPeeringType'] == null ? null : (map['directPeeringType']! as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (SubResource.fromMap((map['peerAsn']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

