// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'change_stream_collection_group_scope.dart';

/// Input properties used for looking up and filtering ChangeStream resources.
class ChangeStreamState {
  /// Tracks changes for a specific collection group.
  /// Structure is documented below.
  final pulumi.Input<ChangeStreamCollectionGroupScope?>? collectionGroupScope;
  /// The creation timestamp of the change stream.
  final pulumi.Input<String?>? createTime;
  /// The Firestore database ID. Defaults to `"(default)"`.
  final pulumi.Input<String?>? database;
  /// Tracks changes across all collections in the database.
  final pulumi.Input<Map<String, dynamic>?>? databaseScope;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Output only. This checksum is computed by the server based on the value of other fields,
  /// and may be sent on delete request to ensure the client has an
  /// up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// The ID to use for the change stream, which will become the final component
  /// of the change stream's resource name.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The duration for which change stream data is retained.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "86400s".
  final pulumi.Input<String?>? retentionPeriod;
  /// The time the Change Stream started recording events.
  final pulumi.Input<String?>? startTime;
  /// The last update timestamp of the change stream.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ChangeStreamState].
  /// [collectionGroupScope] Tracks changes for a specific collection group.
  /// [createTime] The creation timestamp of the change stream.
  /// [database] The Firestore database ID. Defaults to `"(default)"`.
  /// [databaseScope] Tracks changes across all collections in the database.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [etag] Output only. This checksum is computed by the server based on the value of other fields,
  /// [name] The ID to use for the change stream, which will become the final component
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPeriod] The duration for which change stream data is retained.
  /// [startTime] The time the Change Stream started recording events.
  /// [updateTime] The last update timestamp of the change stream.
  const ChangeStreamState({
    this.collectionGroupScope,
    this.createTime,
    this.database,
    this.databaseScope,
    this.deletionPolicy,
    this.etag,
    this.name,
    this.project,
    this.retentionPeriod,
    this.startTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupScope': ?pulumi.Input.mapOptionalInputValue<ChangeStreamCollectionGroupScope, Map<String, dynamic>>(collectionGroupScope, (value) => value.toMap()),
      'createTime': ?createTime,
      'database': ?database,
      'databaseScope': ?databaseScope,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'name': ?name,
      'project': ?project,
      'retentionPeriod': ?retentionPeriod,
      'startTime': ?startTime,
      'updateTime': ?updateTime,
    };
  }

  factory ChangeStreamState.fromMap(Map<String, dynamic> map) {
    return ChangeStreamState(
      collectionGroupScope: (() { final guardedValue = map['collectionGroupScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChangeStreamCollectionGroupScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseScope: (() { final guardedValue = map['databaseScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriod: (() { final guardedValue = map['retentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
