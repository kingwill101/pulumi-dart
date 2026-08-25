// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String? cloudExadataInfrastructure;
  final List<GetDbServersDbServer>? dbServers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructure] Optional.
  /// [dbServers] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  const GetDbServersResult({
    this.cloudExadataInfrastructure,
    this.dbServers,
    this.id,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructure': ?cloudExadataInfrastructure,
      'dbServers': ?(() { final guardedValue = dbServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructure: (() { final guardedValue = map['cloudExadataInfrastructure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbServersDbServer>(guardedValue, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
