// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session.dart';

/// The properties that define a direct connection.
class DirectConnection {
  /// The bandwidth of the connection.
  final pulumi.Input<int>? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSession>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String>? connectionIdentifier;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int>? peeringDBFacilityId;
  /// The field indicating if Microsoft provides session ip addresses.
  final pulumi.Input<String>? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final pulumi.Input<bool>? useForPeeringService;

  /// Creates a new [DirectConnection].
  /// [bandwidthInMbps] The bandwidth of the connection.
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  /// [sessionAddressProvider] The field indicating if Microsoft provides session ip addresses.
  /// [useForPeeringService] The flag that indicates whether or not the connection is used for peering service.
  DirectConnection({
    this.bandwidthInMbps,
    this.bgpSession,
    this.connectionIdentifier,
    this.peeringDBFacilityId,
    this.sessionAddressProvider,
    this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': ?bandwidthInMbps,
      'bgpSession': ?pulumi.Input.mapOptionalInputValue<BgpSession, Map<String, dynamic>>(bgpSession, (value) => value.toMap()),
      'connectionIdentifier': ?connectionIdentifier,
      'peeringDBFacilityId': ?peeringDBFacilityId,
      'sessionAddressProvider': ?sessionAddressProvider,
      'useForPeeringService': ?useForPeeringService,
    };
  }

  factory DirectConnection.fromMap(Map<String, dynamic> map) {
    return DirectConnection(
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : (map['bandwidthInMbps'] as int).input(),
      bgpSession: map['bgpSession'] == null ? null : (BgpSession.fromMap((map['bgpSession'] as Map).cast<String, dynamic>())).input(),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : (map['connectionIdentifier'] as String).input(),
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : (map['peeringDBFacilityId'] as int).input(),
      sessionAddressProvider: map['sessionAddressProvider'] == null ? null : (map['sessionAddressProvider'] as String).input(),
      useForPeeringService: map['useForPeeringService'] == null ? null : (map['useForPeeringService'] as bool).input(),
    );
  }
}

