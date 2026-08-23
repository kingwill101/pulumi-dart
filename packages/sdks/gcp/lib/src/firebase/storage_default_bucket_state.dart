// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_default_bucket_bucket.dart';

/// Input properties used for looking up and filtering StorageDefaultBucket resources.
class StorageDefaultBucketState {
  /// The resource name of the underlying Google Cloud Storage bucket.
  /// Structure is documented below.
  final pulumi.Input<List<StorageDefaultBucketBucket>>? buckets;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The ID of the location where the default Google Cloud Storage bucket will be created.
  final pulumi.Input<String>? location;
  /// (Output)
  /// The resource name of the bucket in the format
  /// projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [StorageDefaultBucketState].
  /// [buckets] The resource name of the underlying Google Cloud Storage bucket.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The ID of the location where the default Google Cloud Storage bucket will be created.
  /// [name] (Output)
  /// [project] The ID of the project in which the resource belongs.
  const StorageDefaultBucketState({
    this.buckets,
    this.deletionPolicy,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buckets': ?pulumi.Input.mapOptionalInputValue<List<StorageDefaultBucketBucket>, List<Map<String, dynamic>>>(buckets, (value) => pulumi.Input.encodeList<StorageDefaultBucketBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory StorageDefaultBucketState.fromMap(Map<String, dynamic> map) {
    return StorageDefaultBucketState(
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageDefaultBucketBucket>(guardedValue, (value) => StorageDefaultBucketBucket.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
