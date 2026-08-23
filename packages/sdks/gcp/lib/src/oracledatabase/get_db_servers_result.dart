// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String cloudExadataInfrastructure;
  final List<GetDbServersDbServer> dbServers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructure] Required.
  /// [dbServers] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  const GetDbServersResult({
    required this.cloudExadataInfrastructure,
    required this.dbServers,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructure': cloudExadataInfrastructure,
      'dbServers': pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(dbServers, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructure: map['cloudExadataInfrastructure'] as String,
      dbServers: pulumi.Input.decodeList<GetDbServersDbServer>(map['dbServers']!, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
