// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset.dart';

class AppVersionSnapshotToolset {
  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// (Output)
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final pulumi.Input<String>? executionType;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolset>>? openApiToolsets;
  /// (Output)
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppVersionSnapshotToolset].
  /// [createTime] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [etag] (Output)
  /// [executionType] (Output)
  /// [name] (Output)
  /// [openApiToolsets] (Output)
  /// [updateTime] (Output)
  AppVersionSnapshotToolset({
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.executionType,
    this.name,
    this.openApiToolsets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'executionType': ?executionType,
      'name': ?name,
      'openApiToolsets': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolset>, List<Map<String, dynamic>>>(openApiToolsets, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AppVersionSnapshotToolset.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolset(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      executionType: map['executionType'] == null ? null : (map['executionType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openApiToolsets: map['openApiToolsets'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolset>(map['openApiToolsets']!, (value) => AppVersionSnapshotToolsetOpenApiToolset.fromMap((value as Map).cast<String, dynamic>()))).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

