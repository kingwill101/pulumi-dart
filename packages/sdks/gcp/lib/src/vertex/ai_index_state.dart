// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_index_deployed_index.dart';
import 'ai_index_encryption_spec.dart';
import 'ai_index_index_stat.dart';
import 'ai_index_metadata.dart';

/// Input properties used for looking up and filtering AiIndex resources.
class AiIndexState {
  /// The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? createTime;
  /// The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  /// Structure is documented below.
  final pulumi.Input<List<AiIndexDeployedIndex>>? deployedIndexes;
  /// The description of the Index.
  final pulumi.Input<String>? description;
  /// The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// Structure is documented below.
  final pulumi.Input<AiIndexEncryptionSpec>? encryptionSpec;
  /// Used to perform consistent read-modify-write updates.
  final pulumi.Input<String>? etag;
  /// Stats of the index resource.
  /// Structure is documented below.
  final pulumi.Input<List<AiIndexIndexStat>>? indexStats;
  /// The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// * BATCH_UPDATE: user can call indexes.patch with files on Cloud Storage of datapoints to update.
  /// * STREAM_UPDATE: user can call indexes.upsertDatapoints/DeleteDatapoints to update the Index and the updates will be applied in corresponding DeployedIndexes in nearly real-time.
  final pulumi.Input<String>? indexUpdateMethod;
  /// The labels with user-defined metadata to organize your Indexes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Additional information about the Index.
  /// Although this field is not marked as required in the API specification, it is currently required when creating an Index and must be provided.
  /// Attempts to create an Index without this field will result in an API error.
  /// Structure is documented below.
  final pulumi.Input<AiIndexMetadata>? metadata;
  /// Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information.
  final pulumi.Input<String>? metadataSchemaUri;
  /// The resource name of the Index.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the index. eg us-central1
  final pulumi.Input<String>? region;
  /// The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiIndexState].
  /// [createTime] The timestamp of when the Index was created in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// [deployedIndexes] The pointers to DeployedIndexes created from this Index. An Index can be only deleted if all its DeployedIndexes had been undeployed first.
  /// [description] The description of the Index.
  /// [displayName] The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key spec for an Index. If set, this Index and all sub-resources of this Index will be secured by this key.
  /// [etag] Used to perform consistent read-modify-write updates.
  /// [indexStats] Stats of the index resource.
  /// [indexUpdateMethod] The update method to use with this Index. The value must be the followings. If not set, BATCH_UPDATE will be used by default.
  /// [labels] The labels with user-defined metadata to organize your Indexes.
  /// [metadata] Additional information about the Index.
  /// [metadataSchemaUri] Points to a YAML file stored on Google Cloud Storage describing additional information about the Index, that is specific to it. Unset if the Index does not have any additional information.
  /// [name] The resource name of the Index.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the index. eg us-central1
  /// [updateTime] The timestamp of when the Index was last updated in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  AiIndexState({
    pulumi.Output<String>? createTime,
    pulumi.Output<List<AiIndexDeployedIndex>>? deployedIndexes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<AiIndexEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? etag,
    pulumi.Output<List<AiIndexIndexStat>>? indexStats,
    pulumi.Output<String>? indexUpdateMethod,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<AiIndexMetadata>? metadata,
    pulumi.Output<String>? metadataSchemaUri,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? region,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deployedIndexes = pulumi.Input.asOptionalInput<List<AiIndexDeployedIndex>>(deployedIndexes),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      encryptionSpec = pulumi.Input.asOptionalInput<AiIndexEncryptionSpec>(encryptionSpec),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      indexStats = pulumi.Input.asOptionalInput<List<AiIndexIndexStat>>(indexStats),
      indexUpdateMethod = pulumi.Input.asOptionalInput<String>(indexUpdateMethod),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      metadata = pulumi.Input.asOptionalInput<AiIndexMetadata>(metadata),
      metadataSchemaUri = pulumi.Input.asOptionalInput<String>(metadataSchemaUri),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      region = pulumi.Input.asOptionalInput<String>(region),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deployedIndexes': ?pulumi.Input.mapOptionalInputValue<List<AiIndexDeployedIndex>, List<Map<String, dynamic>>>(deployedIndexes, (value) => pulumi.Input.encodeList<AiIndexDeployedIndex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiIndexEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'etag': ?etag,
      'indexStats': ?pulumi.Input.mapOptionalInputValue<List<AiIndexIndexStat>, List<Map<String, dynamic>>>(indexStats, (value) => pulumi.Input.encodeList<AiIndexIndexStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indexUpdateMethod': ?indexUpdateMethod,
      'labels': ?labels,
      'metadata': ?pulumi.Input.mapOptionalInputValue<AiIndexMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'metadataSchemaUri': ?metadataSchemaUri,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'updateTime': ?updateTime,
    };
  }

  factory AiIndexState.fromMap(Map<String, dynamic> map) {
    return AiIndexState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deployedIndexes: map['deployedIndexes'] == null ? null : pulumi.Output.create<List<AiIndexDeployedIndex>>(pulumi.Input.decodeList<AiIndexDeployedIndex>(map['deployedIndexes'], (value) => AiIndexDeployedIndex.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<AiIndexEncryptionSpec>(AiIndexEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      indexStats: map['indexStats'] == null ? null : pulumi.Output.create<List<AiIndexIndexStat>>(pulumi.Input.decodeList<AiIndexIndexStat>(map['indexStats'], (value) => AiIndexIndexStat.fromMap((value as Map).cast<String, dynamic>()))),
      indexUpdateMethod: map['indexUpdateMethod'] == null ? null : pulumi.Output.create<String>(map['indexUpdateMethod'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<AiIndexMetadata>(AiIndexMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
      metadataSchemaUri: map['metadataSchemaUri'] == null ? null : pulumi.Output.create<String>(map['metadataSchemaUri'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

