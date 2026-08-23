// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vector_database_config.dart';
import 'get_vector_database_endpoint.dart';

/// Result data returned by getVectorDatabase.
class GetVectorDatabaseResult {
  /// Advanced configuration for the vector database. The structure is documented below.
  final List<GetVectorDatabaseConfig> configs;
  /// The date and time when the vector database was created.
  final String createdAt;
  /// The connection endpoints for the vector database. The structure is documented below.
  final List<GetVectorDatabaseEndpoint> endpoints;
  /// The ID of the vector database.
  final String id;
  /// The name of the vector database.
  final String name;
  /// The UUID of the account that owns the vector database.
  final String ownerUuid;
  /// The slug identifier for the region where the vector database is located.
  final String region;
  /// The slug identifier representing the size of the vector database.
  final String size;
  /// The current status of the vector database (ex. `active`).
  final String status;
  /// A list of tag names applied to the vector database.
  final List<String> tags;
  /// The date and time when the vector database was last updated.
  final String updatedAt;

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
    required this.configs,
    required this.createdAt,
    required this.endpoints,
    required this.id,
    required this.name,
    required this.ownerUuid,
    required this.region,
    required this.size,
    required this.status,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetVectorDatabaseConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'createdAt': createdAt,
      'endpoints': pulumi.Input.encodeList<GetVectorDatabaseEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'name': name,
      'ownerUuid': ownerUuid,
      'region': region,
      'size': size,
      'status': status,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetVectorDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetVectorDatabaseResult(
      configs: pulumi.Input.decodeList<GetVectorDatabaseConfig>(map['configs']!, (value) => GetVectorDatabaseConfig.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      endpoints: pulumi.Input.decodeList<GetVectorDatabaseEndpoint>(map['endpoints']!, (value) => GetVectorDatabaseEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      ownerUuid: map['ownerUuid'] as String,
      region: map['region'] as String,
      size: map['size'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}
