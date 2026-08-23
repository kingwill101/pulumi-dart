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
  const ExchangeConnectionResponse({
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
      bgpSession: (() { final guardedValue = map['bgpSession']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSessionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionIdentifier: (() { final guardedValue = map['connectionIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionState: pulumi.Input.fromValue(map['connectionState'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      peeringDBFacilityId: (() { final guardedValue = map['peeringDBFacilityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
