// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_session_response.dart';

/// The properties that define an exchange connection.
class ExchangeConnectionResponse {
  /// The BGP session associated with the connection.
  final pulumi.Input<BgpSessionResponse>? bgpSession;
  /// The unique identifier (GUID) for the connection.
  final pulumi.Input<String>? connectionIdentifier;
  /// The state of the connection.
  final pulumi.Input<String> connectionState;
  /// The error message related to the connection state, if any.
  final pulumi.Input<String> errorMessage;
  /// The PeeringDB.com ID of the facility at which the connection has to be set up.
  final pulumi.Input<int>? peeringDBFacilityId;

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
      'bgpSession': ?pulumi.Input.mapOptionalInputValue<BgpSessionResponse, Map<String, dynamic>>(bgpSession, (value) => value.toMap()),
      'connectionIdentifier': ?connectionIdentifier,
      'connectionState': connectionState,
      'errorMessage': errorMessage,
      'peeringDBFacilityId': ?peeringDBFacilityId,
    };
  }

  factory ExchangeConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ExchangeConnectionResponse(
      bgpSession: map['bgpSession'] == null ? null : (BgpSessionResponse.fromMap((map['bgpSession']! as Map).cast<String, dynamic>())).input(),
      connectionIdentifier: map['connectionIdentifier'] == null ? null : (map['connectionIdentifier']! as String).input(),
      connectionState: (map['connectionState'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      peeringDBFacilityId: map['peeringDBFacilityId'] == null ? null : (map['peeringDBFacilityId']! as int).input(),
    );
  }
}

