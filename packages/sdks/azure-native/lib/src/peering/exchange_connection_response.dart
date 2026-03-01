// ignore_for_file: unused_element, unnecessary_cast

import 'bgp_session_response.dart';

/// The properties that define an exchange connection.
class ExchangeConnectionResponse {
  /// The BGP session associated with the connection.
  final BgpSessionResponse? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final String? connectionIdentifier;
  /// The state of the connection.
  final String connectionState;
  /// The error message related to the connection state, if any.
  final String errorMessage;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final int? peeringDBFacilityId;

  /// Creates a new [ExchangeConnectionResponse].
  /// [bgpSession] The BGP session associated with the connection.
  /// [connectionIdentifier] The unique identifier (GUID) for the connection.
  /// [connectionState] The state of the connection.
  /// [errorMessage] The error message related to the connection state, if any.
  /// [peeringDBFacilityId] The PeeringDB.com ID of the facility at which the connection has to be set up.
  ExchangeConnectionResponse({
    this.bgpSession,
    this.connectionIdentifier,
    required this.connectionState,
    required this.errorMessage,
    this.peeringDBFacilityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSession': ?bgpSession == null ? null : bgpSession!.toMap(),
      'connectionIdentifier': ?connectionIdentifier,
      'connectionState': connectionState,
      'errorMessage': errorMessage,
      'peeringDBFacilityId': ?peeringDBFacilityId,
    };
  }

  factory ExchangeConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ExchangeConnectionResponse(
      bgpSession: map['bgpSession'] == null ? null : BgpSessionResponse.fromMap((map['bgpSession'] as Map).cast<String, dynamic>()),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : map['connectionIdentifier'] as String,
      connectionState: map['connectionState'] as String,
      errorMessage: map['errorMessage'] as String,
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : map['peeringDBFacilityId'] as int,
    );
  }
}

