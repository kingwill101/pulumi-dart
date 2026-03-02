// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot.dart';

/// Input properties used for looking up and filtering AppVersion resources.
class AppVersionState {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? app;
  /// The ID to use for the app version, which will become the final component
  /// of the app version's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app version.
  final pulumi.Input<String>? appVersionId;
  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// Email of the user who created the app version.
  final pulumi.Input<String>? creator;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A snapshot of the app.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshot>>? snapshots;

  /// Creates a new [AppVersionState].
  /// [app] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [appVersionId] The ID to use for the app version, which will become the final component
  /// [createTime] (Output)
  /// [creator] Email of the user who created the app version.
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [etag] (Output)
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] (Output)
  /// [project] The ID of the project in which the resource belongs.
  /// [snapshots] A snapshot of the app.
  AppVersionState({
    this.app,
    this.appVersionId,
    this.createTime,
    this.creator,
    this.description,
    this.displayName,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.snapshots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appVersionId': ?appVersionId,
      'createTime': ?createTime,
      'creator': ?creator,
      'description': ?description,
      'displayName': ?displayName,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'snapshots': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshot>, List<Map<String, dynamic>>>(snapshots, (value) => pulumi.Input.encodeList<AppVersionSnapshot, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionState.fromMap(Map<String, dynamic> map) {
    return AppVersionState(
      app: map['app'] == null ? null : (map['app']! as String).input(),
      appVersionId: map['appVersionId'] == null ? null : (map['appVersionId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      creator: map['creator'] == null ? null : (map['creator']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      snapshots: map['snapshots'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshot>(map['snapshots']!, (value) => AppVersionSnapshot.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

