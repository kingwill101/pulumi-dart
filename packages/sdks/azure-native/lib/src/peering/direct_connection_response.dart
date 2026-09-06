// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session_response.dart';

/// The properties that define a direct connection.
class DirectConnectionResponse {
  /// The bandwidth of the connection.
  final pulumi.Input<int?>? bandwidthInMbps;
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSessionResponse?>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String?>? connectionIdentifier;
  /// The state of the connection.
  final pulumi.Input<String> connectionState;
  /// The error message related to the connection state, if any.
  final pulumi.Input<String> errorMessage;
  /// The ID used within Microsoft's peering provisioning system to track the connection
  final pulumi.Input<String> microsoftTrackingId;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int?>? peeringDBFacilityId;
  /// The bandwidth that is actually provisioned.
  final pulumi.Input<int> provisionedBandwidthInMbps;
  /// The field indicating if Microsoft provides session ip addresses.
  final pulumi.Input<String?>? sessionAddressProvider;
  /// The flag that indicates whether or not the connection is used for peering service.
  final pulumi.Input<bool?>? useForPeeringService;

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
  const DirectConnectionResponse({
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
      bandwidthInMbps: (() { final guardedValue = map['bandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      bgpSession: (() { final guardedValue = map['bgpSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSessionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionIdentifier: (() { final guardedValue = map['connectionIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionState: pulumi.Input.fromValue(map['connectionState'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      microsoftTrackingId: pulumi.Input.fromValue(map['microsoftTrackingId'] as String),
      peeringDBFacilityId: (() { final guardedValue = map['peeringDBFacilityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisionedBandwidthInMbps: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['provisionedBandwidthInMbps'])),
      sessionAddressProvider: (() { final guardedValue = map['sessionAddressProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useForPeeringService: (() { final guardedValue = map['useForPeeringService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
