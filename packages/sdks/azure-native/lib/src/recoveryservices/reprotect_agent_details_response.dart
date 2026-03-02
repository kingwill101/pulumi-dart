// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';

/// Reprotect agent details.
class ReprotectAgentDetailsResponse {
  /// The list of accessible datastores fetched from discovery.
  final pulumi.Input<List<String>> accessibleDatastores;
  /// The reprotect agent Bios Id.
  final pulumi.Input<String> biosId;
  /// The fabric object Id.
  final pulumi.Input<String> fabricObjectId;
  /// The reprotect agent Fqdn.
  final pulumi.Input<String> fqdn;
  /// The health of the reprotect agent.
  final pulumi.Input<String> health;
  /// The health errors.
  final pulumi.Input<List<HealthErrorResponse>> healthErrors;
  /// The reprotect agent Id.
  final pulumi.Input<String> id;
  /// The last time when SDS information discovered in SRS.
  final pulumi.Input<String> lastDiscoveryInUtc;
  /// The last heartbeat received from the reprotect agent.
  final pulumi.Input<String> lastHeartbeatUtc;
  /// The reprotect agent name.
  final pulumi.Input<String> name;
  /// The protected item count.
  final pulumi.Input<int> protectedItemCount;
  /// The Vcenter Id.
  final pulumi.Input<String> vcenterId;
  /// The version.
  final pulumi.Input<String> version;

  /// Creates a new [ReprotectAgentDetailsResponse].
  /// [accessibleDatastores] The list of accessible datastores fetched from discovery.
  /// [biosId] The reprotect agent Bios Id.
  /// [fabricObjectId] The fabric object Id.
  /// [fqdn] The reprotect agent Fqdn.
  /// [health] The health of the reprotect agent.
  /// [healthErrors] The health errors.
  /// [id] The reprotect agent Id.
  /// [lastDiscoveryInUtc] The last time when SDS information discovered in SRS.
  /// [lastHeartbeatUtc] The last heartbeat received from the reprotect agent.
  /// [name] The reprotect agent name.
  /// [protectedItemCount] The protected item count.
  /// [vcenterId] The Vcenter Id.
  /// [version] The version.
  ReprotectAgentDetailsResponse({
    required this.accessibleDatastores,
    required this.biosId,
    required this.fabricObjectId,
    required this.fqdn,
    required this.health,
    required this.healthErrors,
    required this.id,
    required this.lastDiscoveryInUtc,
    required this.lastHeartbeatUtc,
    required this.name,
    required this.protectedItemCount,
    required this.vcenterId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibleDatastores': accessibleDatastores,
      'biosId': biosId,
      'fabricObjectId': fabricObjectId,
      'fqdn': fqdn,
      'health': health,
      'healthErrors': pulumi.Input.mapInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'lastDiscoveryInUtc': lastDiscoveryInUtc,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'name': name,
      'protectedItemCount': protectedItemCount,
      'vcenterId': vcenterId,
      'version': version,
    };
  }

  factory ReprotectAgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReprotectAgentDetailsResponse(
      accessibleDatastores: ((map['accessibleDatastores'] as List).cast<String>()).input(),
      biosId: (map['biosId'] as String).input(),
      fabricObjectId: (map['fabricObjectId'] as String).input(),
      fqdn: (map['fqdn'] as String).input(),
      health: (map['health'] as String).input(),
      healthErrors: (pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      lastDiscoveryInUtc: (map['lastDiscoveryInUtc'] as String).input(),
      lastHeartbeatUtc: (map['lastHeartbeatUtc'] as String).input(),
      name: (map['name'] as String).input(),
      protectedItemCount: (map['protectedItemCount'] as int).input(),
      vcenterId: (map['vcenterId'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

