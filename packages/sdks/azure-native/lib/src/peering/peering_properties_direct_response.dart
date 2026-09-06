// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'direct_connection_response.dart';
import 'sub_resource_response.dart';

/// The properties that define a direct peering.
class PeeringPropertiesDirectResponse {
  /// The set of connections that constitute a direct peering.
  final pulumi.Input<List<DirectConnectionResponse>?>? connections;
  /// The type of direct peering.
  final pulumi.Input<String?>? directPeeringType;
  /// The reference of the peer ASN.
  final pulumi.Input<SubResourceResponse?>? peerAsn;
  /// The flag that indicates whether or not the peering is used for peering service.
  final pulumi.Input<bool> useForPeeringService;

  /// Creates a new [PeeringPropertiesDirectResponse].
  /// [connections] The set of connections that constitute a direct peering.
  /// [directPeeringType] The type of direct peering.
  /// [peerAsn] The reference of the peer ASN.
  /// [useForPeeringService] The flag that indicates whether or not the peering is used for peering service.
  const PeeringPropertiesDirectResponse({
    this.connections,
    this.directPeeringType,
    this.peerAsn,
    required this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connections': ?pulumi.Input.mapOptionalInputValue<List<DirectConnectionResponse>, List<Map<String, dynamic>>>(connections, (value) => pulumi.Input.encodeList<DirectConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'directPeeringType': ?directPeeringType,
      'peerAsn': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(peerAsn, (value) => value.toMap()),
      'useForPeeringService': useForPeeringService,
    };
  }

  factory PeeringPropertiesDirectResponse.fromMap(Map<String, dynamic> map) {
    return PeeringPropertiesDirectResponse(
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DirectConnectionResponse>(guardedValue, (value) => DirectConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      directPeeringType: (() { final guardedValue = map['directPeeringType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: (() { final guardedValue = map['peerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useForPeeringService: pulumi.Input.fromValue(map['useForPeeringService'] as bool),
    );
  }
}
