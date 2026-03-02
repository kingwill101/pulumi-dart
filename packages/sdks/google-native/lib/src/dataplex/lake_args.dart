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
    this.description,
    this.displayName,
    this.labels,
    required this.lakeId,
    this.location,
    this.metastore,
    this.project,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metastore: map['metastore'] == null ? null : (GoogleCloudDataplexV1LakeMetastore.fromMap((map['metastore']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

