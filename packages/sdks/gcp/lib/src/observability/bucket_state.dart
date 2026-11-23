// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cmek_settings.dart';

/// Input properties used for looking up and filtering Bucket resources.
class BucketState {
  /// A client-assigned identifier for the bucket.
  final pulumi.Input<String?>? bucketId;
  /// Settings for configuring CMEK for a bucket.
  /// Structure is documented below.
  final pulumi.Input<BucketCmekSettings?>? cmekSettings;
  /// Output only. Create timestamp.
  final pulumi.Input<String?>? createTime;
  /// Output only. Delete timestamp.
  final pulumi.Input<String?>? deleteTime;
  /// Description of the bucket.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// The location of the bucket.
  final pulumi.Input<String?>? location;
  /// Identifier. Name of the bucket. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Output only. Timestamp when the bucket in soft-deleted state is purged.
  final pulumi.Input<String?>? purgeTime;
  /// Output only. Update timestamp.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [BucketState].
  /// [bucketId] A client-assigned identifier for the bucket.
  /// [cmekSettings] Settings for configuring CMEK for a bucket.
  /// [createTime] Output only. Create timestamp.
  /// [deleteTime] Output only. Delete timestamp.
  /// [description] Description of the bucket.
  /// [displayName] User friendly display name.
  /// [location] The location of the bucket.
  /// [name] Identifier. Name of the bucket. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]
  /// [project] The ID of the project in which the resource belongs.
  /// [purgeTime] Output only. Timestamp when the bucket in soft-deleted state is purged.
  /// [updateTime] Output only. Update timestamp.
  const BucketState({
    this.bucketId,
    this.cmekSettings,
    this.createTime,
    this.deleteTime,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.purgeTime,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<BucketCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'purgeTime': ?purgeTime,
      'updateTime': ?updateTime,
    };
  }

  factory BucketState.fromMap(Map<String, dynamic> map) {
    return BucketState(
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cmekSettings: (() { final guardedValue = map['cmekSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
