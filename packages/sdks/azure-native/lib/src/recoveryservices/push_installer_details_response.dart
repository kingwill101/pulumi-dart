// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Push installer details.
class PushInstallerDetailsResponse {
  /// The push installer Bios Id.
  final pulumi.Input<String> biosId;
  /// The fabric object Id.
  final pulumi.Input<String> fabricObjectId;
  /// The push installer Fqdn.
  final pulumi.Input<String> fqdn;
  /// The health of the push installer.
  final pulumi.Input<String> health;
  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;
  /// The push installer Id.
  final pulumi.Input<String> id;
  /// The last heartbeat received from the push installer.
  final pulumi.Input<String> lastHeartbeatUtc;
  /// The push installer name.
  final pulumi.Input<String> name;
  /// The version.
  final pulumi.Input<String> version;

  /// Creates a new [PushInstallerDetailsResponse].
  /// [biosId] The push installer Bios Id.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The push installer Fqdn.
  /// [health] The health of the push installer.
  /// [healthErrors] The health errors.
  /// [id] The push installer Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the push installer.
  /// [name] The push installer name.
  /// [version] The version.
  const PushInstallerDetailsResponse({
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
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'version': version,
    };
  }

  factory PushInstallerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PushInstallerDetailsResponse(
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      fabricObjectId: pulumi.Input.fromValue(map['fabricObjectId'] as String),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      health: pulumi.Input.fromValue(map['health'] as String),
      healthErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors']!, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastHeartbeatUtc: pulumi.Input.fromValue(map['lastHeartbeatUtc'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

