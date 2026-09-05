// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String? cloudExadataInfrastructureName;
  /// A `dbServers` block as defined below.
  final List<GetDbServersDbServer>? dbServers;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? resourceGroupName;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructureName] Optional.
  /// [dbServers] A `dbServers` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceGroupName] Optional.
  const GetDbServersResult({
    this.cloudExadataInfrastructureName,
    this.dbServers,
    this.id,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureName': ?cloudExadataInfrastructureName,
      'dbServers': ?(() { final guardedValue = dbServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructureName: (() { final guardedValue = map['cloudExadataInfrastructureName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDbServersDbServer>(guardedValue, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
