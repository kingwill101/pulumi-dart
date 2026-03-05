// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_system.dart';
import 'entity_type.dart';
import 'google_cloud_dataplex_v1_schema.dart';
import 'google_cloud_dataplex_v1_storage_format.dart';

/// {@template pulumi_dataplex_v1_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_entity_args_doc}
class EntityArgs {
  /// Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  final pulumi.Input<String> asset;
  /// Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  final pulumi.Input<String> dataPath;
  /// Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  final pulumi.Input<String>? dataPathPattern;
  /// Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  final pulumi.Input<String>? description;
  /// Optional. Display name must be shorter than or equal to 256 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  final pulumi.Input<String>? etag;
  /// Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  final pulumi.Input<GoogleCloudDataplexV1StorageFormat> format;
  /// A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores, and consist of 256 or fewer characters.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  final pulumi.Input<GoogleCloudDataplexV1Schema> schema;
  /// Immutable. Identifies the storage system of the entity data.
  final pulumi.Input<EntitySystem> system;
  /// Immutable. The type of entity.
  final pulumi.Input<EntityType> type;
  final pulumi.Input<String>? zone;

  /// Creates a new [EntityArgs].
  /// [asset] Immutable. The ID of the asset associated with the storage location containing the entity data. The entity must be with in the same zone with the asset.
  /// [dataPath] Immutable. The storage path of the entity data. For Cloud Storage data, this is the fully-qualified path to the entity, such as gs://bucket/path/to/data. For BigQuery data, this is the name of the table resource, such as projects/project_id/datasets/dataset_id/tables/table_id.
  /// [dataPathPattern] Optional. The set of items within the data path constituting the data in the entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
  /// [description] Optional. User friendly longer description text. Must be shorter than or equal to 1024 characters.
  /// [displayName] Optional. Display name must be shorter than or equal to 256 characters.
  /// [etag] Optional. The etag associated with the entity, which can be retrieved with a GetEntity request. Required for update and delete requests.
  /// [format] Identifies the storage format of the entity data. It does not apply to entities with data stored in BigQuery.
  /// [id] A user-provided entity ID. It is mutable, and will be used as the published table name. Specifying a new ID in an update entity request will override the existing value. The ID must contain only letters (a-z, A-Z), numbers (0-9), and underscores, and consist of 256 or fewer characters.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [schema] The description of the data structure and layout. The schema is not included in list responses. It is only included in SCHEMA and FULL entity views of a GetEntity response.
  /// [system] Immutable. Identifies the storage system of the entity data.
  /// [type] Immutable. The type of entity.
  /// [zone] Optional.
  EntityArgs({
    required this.asset,
    required this.dataPath,
    this.dataPathPattern,
    this.description,
    this.displayName,
    this.etag,
    required this.format,
    required this.id,
    required this.lakeId,
    this.location,
    this.project,
    required this.schema,
    required this.system,
    required this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': asset,
      'dataPath': dataPath,
      'dataPathPattern': ?dataPathPattern,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'format': pulumi.Input.mapInputValue<GoogleCloudDataplexV1StorageFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'id': id,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'schema': pulumi.Input.mapInputValue<GoogleCloudDataplexV1Schema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'system': pulumi.Input.mapInputValue<EntitySystem, String>(system, (value) => value.wireValue),
      'type': pulumi.Input.mapInputValue<EntityType, String>(type, (value) => value.wireValue),
      'zone': ?zone,
    };
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      asset: pulumi.Input.fromValue(map['asset'] as String),
      dataPath: pulumi.Input.fromValue(map['dataPath'] as String),
      dataPathPattern: (() { final guardedValue = map['dataPathPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: pulumi.Input.fromValue(GoogleCloudDataplexV1StorageFormat.fromMap((map['format']! as Map).cast<String, dynamic>())),
      id: pulumi.Input.fromValue(map['id'] as String),
      lakeId: pulumi.Input.fromValue(map['lakeId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: pulumi.Input.fromValue(GoogleCloudDataplexV1Schema.fromMap((map['schema']! as Map).cast<String, dynamic>())),
      system: pulumi.Input.fromValue(EntitySystem.fromValue(map['system']! as String)),
      type: pulumi.Input.fromValue(EntityType.fromValue(map['type']! as String)),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

