// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session_response.dart';

/// The properties that define a direct connection.
class DirectConnectionResponse {
  /// The bandwidth of the connection.
  final pulumi.Input<int>? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSessionResponse>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String>? connectionIdentifier;
  /// The state of the connection.
  final pulumi.Input<String> connectionState;
  /// The error message related to the connection state, if any.
  final pulumi.Input<String> errorMessage;
  /// The ID used within Microsoft's peering provisioning system to track the connection
  final pulumi.Input<String> microsoftTrackingId;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int>? peeringDBFacilityId;
  /// The bandwidth that is actually provisioned.
  final pulumi.Input<int> provisionedBandwidthInMbps;
  /// The field indicating if Microsoft provides session ip addresses.
  final pulumi.Input<String>? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final pulumi.Input<bool>? useForPeeringService;

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
      'bgpSession': ?pulumi.Input.mapOptionalInputValue<BgpSessionResponse, Map<String, dynamic>>(bgpSession, (value) => value.toMap()),
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
      bandwidthInMbps: map['bandwidthInMbps'] == null ? null : (map['bandwidthInMbps'] as int).input(),
      bgpSession: map['bgpSession'] == null ? null : (BgpSessionResponse.fromMap((map['bgpSession'] as Map).cast<String, dynamic>())).input(),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : (map['connectionIdentifier'] as String).input(),
      connectionState: (map['connectionState'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      microsoftTrackingId: (map['microsoftTrackingId'] as String).input(),
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : (map['peeringDBFacilityId'] as int).input(),
      provisionedBandwidthInMbps: (map['provisionedBandwidthInMbps'] as int).input(),
      sessionAddressProvider: map['sessionAddressProvider'] == null ? null : (map['sessionAddressProvider'] as String).input(),
      useForPeeringService: map['useForPeeringService'] == null ? null : (map['useForPeeringService'] as bool).input(),
    );
  }
}

