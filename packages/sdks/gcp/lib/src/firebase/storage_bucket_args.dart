// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_storage_bucket_storage_bucket_args_doc}
/// The set of arguments for StorageBucket.
/// {@endtemplate}
/// {@macro pulumi_firebase_storage_bucket_storage_bucket_args_doc}
class StorageBucketArgs {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  final pulumi.Input<String?>? bucketId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [StorageBucketArgs].
  /// [bucketId] Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [project] The ID of the project in which the resource belongs.
  const StorageBucketArgs({
    this.bucketId,
    this.deletionPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': ?bucketId,
      'deletionPolicy': ?deletionPolicy,
      'project': ?project,
    };
  }

  factory StorageBucketArgs.fromMap(Map<String, dynamic> map) {
    return StorageBucketArgs(
      bucketId: (() { final guardedValue = map['bucketId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
