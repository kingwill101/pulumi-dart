// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// DRA details.
class DraDetailsResponse {
  /// The DRA Bios Id.
  final pulumi.Input<String> biosId;
  /// The count of protected items which are protected in forward direction.
  final pulumi.Input<int> forwardProtectedItemCount;
  /// The health.
  final pulumi.Input<String> health;
  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;
  /// The DRA Id.
  final pulumi.Input<String> id;
  /// The last heartbeat received from the DRA.
  final pulumi.Input<String> lastHeartbeatUtc;
  /// The DRA name.
  final pulumi.Input<String> name;
  /// The count of protected items which are protected in reverse direction.
  final pulumi.Input<int> reverseProtectedItemCount;
  /// The version.
  final pulumi.Input<String> version;

  /// Creates a new [DraDetailsResponse].
  /// [biosId] The DRA Bios Id.
  /// [forwardProtectedItemCount] The count of protected items which are protected in forward direction.
  /// [health] The health.
  /// [healthErrors] The health errors.
  /// [id] The DRA Id.
  /// [lastHeartbeatUtc] The last heartbeat received from the DRA.
  /// [name] The DRA name.
  /// [reverseProtectedItemCount] The count of protected items which are protected in reverse direction.
  /// [version] The version.
  DraDetailsResponse({
    required this.biosId,
    required this.forwardProtectedItemCount,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.reverseProtectedItemCount,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosId': biosId,
      'forwardProtectedItemCount': forwardProtectedItemCount,
      'health': health,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'reverseProtectedItemCount': reverseProtectedItemCount,
      'version': version,
    };
  }

  factory DraDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DraDetailsResponse(
      biosId: (map['biosId'] as String).input(),
      forwardProtectedItemCount: (map['forwardProtectedItemCount'] as int).input(),
      health: (map['health'] as String).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      lastHeartbeatUtc: (map['lastHeartbeatUtc'] as String).input(),
      name: (map['name'] as String).input(),
      reverseProtectedItemCount: (map['reverseProtectedItemCount'] as int).input(),
      version: (map['version'] as String).input(),
    );
  }
}

