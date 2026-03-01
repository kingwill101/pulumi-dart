// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_lake_metastore.dart';

/// {@template pulumi_dataplex_v1_lake_args_doc}
/// The set of arguments for Lake.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_lake_args_doc}
class LakeArgs {
  /// Optional. Description of the lake.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Optional. User-defined labels for the lake.
  final pulumi.Input<Map<String, String>>? labels;
  /// Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the customer project / location.
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final pulumi.Input<GoogleCloudDataplexV1LakeMetastore>? metastore;
  final pulumi.Input<String>? project;

  /// Creates a new [LakeArgs].
  /// [description] Optional. Description of the lake.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User-defined labels for the lake.
  /// [lakeId] Required. Lake identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the customer project / location.
  /// [location] Optional.
  /// [metastore] Optional. Settings to manage lake and Dataproc Metastore service instance association.
  /// [project] Optional.
  LakeArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> lakeId,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleCloudDataplexV1LakeMetastore>? metastore,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asOptionalInput<String>(location),
      metastore = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1LakeMetastore>(metastore),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'metastore': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1LakeMetastore, Map<String, dynamic>>(metastore, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory LakeArgs.fromMap(Map<String, dynamic> map) {
    return LakeArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metastore: map['metastore'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1LakeMetastore>(GoogleCloudDataplexV1LakeMetastore.fromMap((map['metastore'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

