// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_database_config.dart';
import 'vector_database_endpoint.dart';

/// Input properties used for looking up and filtering VectorDatabase resources.
class VectorDatabaseState {
  /// Advanced configuration for the vector database. The structure is documented below.
  final pulumi.Input<VectorDatabaseConfig>? config;
  /// The date and time when the vector database was created.
  final pulumi.Input<String>? createdAt;
  /// The connection endpoints for the vector database. The structure is documented below.
  final pulumi.Input<List<VectorDatabaseEndpoint>>? endpoints;
  /// The name of the vector database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The UUID of the account that owns the vector database.
  final pulumi.Input<String>? ownerUuid;
  /// The ID of the project that the vector database is assigned to. If excluded, the database will be assigned to your default project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? projectId;
  /// The slug identifier for the region where the vector database will be created (ex. `nyc1`). Changing this forces a new resource to be created.
  final pulumi.Input<String>? region;
  /// The slug identifier representing the size of the vector database (ex. `db-s-1vcpu-1gb`).
  final pulumi.Input<String>? size;
  /// The current status of the vector database (ex. `active`).
  final pulumi.Input<String>? status;
  /// A list of tag names to be applied to the vector database.
  final pulumi.Input<List<String>>? tags;
  /// The date and time when the vector database was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [VectorDatabaseState].
  /// [config] Advanced configuration for the vector database. The structure is documented below.
  /// [createdAt] The date and time when the vector database was created.
  /// [endpoints] The connection endpoints for the vector database. The structure is documented below.
  /// [name] The name of the vector database. Changing this forces a new resource to be created.
  /// [ownerUuid] The UUID of the account that owns the vector database.
  /// [projectId] The ID of the project that the vector database is assigned to. If excluded, the database will be assigned to your default project. Changing this forces a new resource to be created.
  /// [region] The slug identifier for the region where the vector database will be created (ex. `nyc1`). Changing this forces a new resource to be created.
  /// [size] The slug identifier representing the size of the vector database (ex. `db-s-1vcpu-1gb`).
  /// [status] The current status of the vector database (ex. `active`).
  /// [tags] A list of tag names to be applied to the vector database.
  /// [updatedAt] The date and time when the vector database was last updated.
  const VectorDatabaseState({
    this.config,
    this.createdAt,
    this.endpoints,
    this.name,
    this.ownerUuid,
    this.projectId,
    this.region,
    this.size,
    this.status,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<VectorDatabaseConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'createdAt': ?createdAt,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<VectorDatabaseEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<VectorDatabaseEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ownerUuid': ?ownerUuid,
      'projectId': ?projectId,
      'region': ?region,
      'size': ?size,
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory VectorDatabaseState.fromMap(Map<String, dynamic> map) {
    return VectorDatabaseState(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VectorDatabaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VectorDatabaseEndpoint>(guardedValue, (value) => VectorDatabaseEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerUuid: (() { final guardedValue = map['ownerUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
