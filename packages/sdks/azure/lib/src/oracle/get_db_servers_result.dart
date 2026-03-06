// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_servers_db_server.dart';

/// Result data returned by getDbServers.
class GetDbServersResult {
  final String cloudExadataInfrastructureName;
  /// A `db_servers` block as defined below.
  final List<GetDbServersDbServer> dbServers;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String resourceGroupName;

  /// Creates a new [GetDbServersResult].
  /// [cloudExadataInfrastructureName] Required.
  /// [dbServers] A `db_servers` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceGroupName] Required.
  const GetDbServersResult({
    required this.cloudExadataInfrastructureName,
    required this.dbServers,
    required this.id,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureName': cloudExadataInfrastructureName,
      'dbServers': pulumi.Input.encodeList<GetDbServersDbServer, Map<String, dynamic>>(dbServers, (value) => value.toMap()),
      'id': id,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDbServersResult.fromMap(Map<String, dynamic> map) {
    return GetDbServersResult(
      cloudExadataInfrastructureName: map['cloudExadataInfrastructureName'] as String,
      dbServers: pulumi.Input.decodeList<GetDbServersDbServer>(map['dbServers']!, (value) => GetDbServersDbServer.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

