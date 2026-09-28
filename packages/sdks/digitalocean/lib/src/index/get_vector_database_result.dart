// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vector_database_config.dart';
import 'get_vector_database_endpoint.dart';

/// Result data returned by getVectorDatabase.
class GetVectorDatabaseResult {
  /// Advanced configuration for the vector database. The structure is documented below.
  final List<GetVectorDatabaseConfig>? configs;
  /// The date and time when the vector database was created.
  final String? createdAt;
  /// The connection endpoints for the vector database. The structure is documented below.
  final List<GetVectorDatabaseEndpoint>? endpoints;
  /// The ID of the vector database.
  final String? id;
  /// The name of the vector database.
  final String? name;
  /// The UUID of the account that owns the vector database.
  final String? ownerUuid;
  /// The slug identifier for the region where the vector database is located.
  final String? region;
  /// The slug identifier representing the size of the vector database.
  final String? size;
  /// The current status of the vector database (ex. `active`).
  final String? status;
  /// A list of tag names applied to the vector database.
  final List<String>? tags;
  /// The date and time when the vector database was last updated.
  final String? updatedAt;

  /// Creates a new [GetVectorDatabaseResult].
  /// [configs] Advanced configuration for the vector database. The structure is documented below.
  /// [createdAt] The date and time when the vector database was created.
  /// [endpoints] The connection endpoints for the vector database. The structure is documented below.
  /// [id] The ID of the vector database.
  /// [name] The name of the vector database.
  /// [ownerUuid] The UUID of the account that owns the vector database.
  /// [region] The slug identifier for the region where the vector database is located.
  /// [size] The slug identifier representing the size of the vector database.
  /// [status] The current status of the vector database (ex. `active`).
  /// [tags] A list of tag names applied to the vector database.
  /// [updatedAt] The date and time when the vector database was last updated.
  const GetVectorDatabaseResult({
    this.configs,
    this.createdAt,
    this.endpoints,
    this.id,
    this.name,
    this.ownerUuid,
    this.region,
    this.size,
    this.status,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVectorDatabaseConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'endpoints': ?(() { final guardedValue = endpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVectorDatabaseEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'ownerUuid': ?ownerUuid,
      'region': ?region,
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetVectorDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetVectorDatabaseResult(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVectorDatabaseConfig>(guardedValue, (value) => GetVectorDatabaseConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVectorDatabaseEndpoint>(guardedValue, (value) => GetVectorDatabaseEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerUuid: (() { final guardedValue = map['ownerUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
