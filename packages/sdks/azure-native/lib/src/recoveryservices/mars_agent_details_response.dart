// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Mars agent details.
class MarsAgentDetailsResponse {
  /// The Mars agent Bios Id.
  final pulumi.Input<String> biosId;

  /// The fabric object Id.
  final pulumi.Input<String> fabricObjectId;

  /// The Mars agent Fqdn.
  final pulumi.Input<String> fqdn;

  /// The health of the Mars agent.
  final pulumi.Input<String> health;

  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;

  /// The Mars agent Id.
  final pulumi.Input<String> id;

  /// The last heartbeat received from the Mars agent.
  final pulumi.Input<String> lastHeartbeatUtc;

  /// The Mars agent name.
  final pulumi.Input<String> name;

  /// The version.
  final pulumi.Input<String> version;

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
      'healthErrors':
          pulumi.Input.mapInputValue<
            List<HealthErrorResponse>,
            List<Map<String, dynamic>>
          >(
            healthErrors,
            (value) =>
                pulumi.Input.encodeList<
                  HealthErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'version': version,
    };
  }

  factory MarsAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MarsAgentDetailsResponse(
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      fabricObjectId: pulumi.Input.fromValue(map['fabricObjectId'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HealthErrorResponse>(
          map['healthErrors']!,
          (value) => HealthErrorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastHeartbeatUtc: pulumi.Input.fromValue(
        map['lastHeartbeatUtc'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
