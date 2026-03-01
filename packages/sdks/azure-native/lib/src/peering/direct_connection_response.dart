// ignore_for_file: unused_element, unnecessary_cast

import 'bgp_session_response.dart';

/// The properties that define a direct connection.
class DirectConnectionResponse {
  /// The bandwidth of the connection.
  final int? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final BgpSessionResponse? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final String? connectionIdentifier;
  /// The state of the connection.
  final String connectionState;
  /// The error message related to the connection state, if any.
  final String errorMessage;
  /// The ID used within Microsoft's peering provisioning system to track the connection
  final String microsoftTrackingId;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final int? peeringDBFacilityId;
  /// The bandwidth that is actually provisioned.
  final int provisionedBandwidthInMbps;
  /// The field indicating if Microsoft provides session ip addresses.
  final String? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final bool? useForPeeringService;

  /// Creates a new [DirectConnectionResponse].
  /// [bandwidthInMbps] The bandwidth of the connection.
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [connectionState] The state of the connection.
  /// [errorMessage] The error message related to the connection state, if any.
  /// [microsoftTrackingId] The ID used within Microsoft's peering provisioning system to track the connection
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  /// [provisionedBandwidthInMbps] The bandwidth that is actually provisioned.
  /// [sessionAddressProvider] The field indicating if Microsoft provides session ip addresses.
  /// [useForPeeringService] The flag that indicates whether or not the connection is used for peering service.
  DirectConnectionResponse({
    this.bandwidthInMbps,
    this.bgpSession,
    this.connectionIdentifier,
    required this.connectionState,
    required this.errorMessage,
    required this.microsoftTrackingId,
    this.peeringDBFacilityId,
    required this.provisionedBandwidthInMbps,
    this.sessionAddressProvider,
    this.useForPeeringService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthInMbps': ?bandwidthInMbps,
      'bgpSession': ?bgpSession == null ? null : bgpSession!.toMap(),
      'connectionIdentifier': ?connectionIdentifier,
      'connectionState': connectionState,
      'errorMessage': errorMessage,
      'microsoftTrackingId': microsoftTrackingId,
      'peeringDBFacilityId': ?peeringDBFacilityId,
      'provisionedBandwidthInMbps': provisionedBandwidthInMbps,
      'sessionAddressProvider': ?sessionAddressProvider,
      'useForPeeringService': ?useForPeeringService,
    };
  }

  factory DirectConnectionResponse.fromMap(Map<String, dynamic> map) {
    return DirectConnectionResponse(
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : map['bandwidthInMbps'] as int,
      bgpSession: map['bgpSession'] == null ? null : BgpSessionResponse.fromMap((map['bgpSession'] as Map).cast<String, dynamic>()),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : map['connectionIdentifier'] as String,
      connectionState: map['connectionState'] as String,
      errorMessage: map['errorMessage'] as String,
      microsoftTrackingId: map['microsoftTrackingId'] as String,
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : map['peeringDBFacilityId'] as int,
      provisionedBandwidthInMbps: map['provisionedBandwidthInMbps'] as int,
      sessionAddressProvider: map['sessionAddressProvider'] == null ? null : map['sessionAddressProvider'] as String,
      useForPeeringService: map['useForPeeringService'] == null ? null : map['useForPeeringService'] as bool,
    );
  }
}

