// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Mars agent details.
class MarsAgentDetailsResponse {
  /// The Mars agent Bios Id.
  final String biosId;
  /// The fabric object Id.
  final String fabricObjectId;
  /// The Mars agent Fqdn.
  final String fqdn;
  /// The health of the Mars agent.
  final String health;
  /// The health errors.
  final List<HealthErrorResponse> healthErrors;
  /// The Mars agent Id.
  final String id;
  /// The last heartbeat received from the Mars agent.
  final String lastHeartbeatUtc;
  /// The Mars agent name.
  final String name;
  /// The version.
  final String version;

  /// Creates a new [MarsAgentDetailsResponse].
  /// [biosId] The Mars agent Bios Id.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The Mars agent Fqdn.
  /// [health] The health of the Mars agent.
  /// [healthErrors] The health errors.
  /// [id] The Mars agent Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the Mars agent.
  /// [name] The Mars agent name.
  /// [version] The version.
  MarsAgentDetailsResponse({
    required this.biosId,
    required this.fabricObjectId,
    required this.fqdn,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'health': health,
      'healthErrors': pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors, (value) => value.toMap()),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'version': version,
    };
  }

  factory MarsAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MarsAgentDetailsResponse(
      biosId: map['biosId'] as String,
      fabricObjectId: map['fabricObjectId'] as String,
      fqdn: map['fqdn'] as String,
      health: map['health'] as String,
      healthErrors: pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

