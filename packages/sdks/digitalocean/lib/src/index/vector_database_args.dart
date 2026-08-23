// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vector_database_config.dart';

/// {@template pulumi_index_vector_database_vector_database_args_doc}
/// The set of arguments for VectorDatabase.
/// {@endtemplate}
/// {@macro pulumi_index_vector_database_vector_database_args_doc}
class VectorDatabaseArgs {
  /// Advanced configuration for the vector database. The structure is documented below.
  final pulumi.Input<VectorDatabaseConfig>? config;
  /// The name of the vector database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the project that the vector database is assigned to. If excluded, the database will be assigned to your default project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? projectId;
  /// The slug identifier for the region where the vector database will be created (ex. `nyc1`). Changing this forces a new resource to be created.
  final pulumi.Input<String> region;
  /// The slug identifier representing the size of the vector database (ex. `db-s-1vcpu-1gb`).
  final pulumi.Input<String> size;
  /// A list of tag names to be applied to the vector database.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [VectorDatabaseArgs].
  /// [config] Advanced configuration for the vector database. The structure is documented below.
  /// [name] The name of the vector database. Changing this forces a new resource to be created.
  /// [projectId] The ID of the project that the vector database is assigned to. If excluded, the database will be assigned to your default project. Changing this forces a new resource to be created.
  /// [region] The slug identifier for the region where the vector database will be created (ex. `nyc1`). Changing this forces a new resource to be created.
  /// [size] The slug identifier representing the size of the vector database (ex. `db-s-1vcpu-1gb`).
  /// [tags] A list of tag names to be applied to the vector database.
  const VectorDatabaseArgs({
    this.config,
    this.name,
    this.projectId,
    required this.region,
    required this.size,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<VectorDatabaseConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'name': ?name,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'tags': ?tags,
    };
  }

  factory VectorDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return VectorDatabaseArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VectorDatabaseConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
