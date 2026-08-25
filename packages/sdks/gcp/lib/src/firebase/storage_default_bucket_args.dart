// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_storage_default_bucket_storage_default_bucket_args_doc}
/// The set of arguments for StorageDefaultBucket.
/// {@endtemplate}
/// {@macro pulumi_firebase_storage_default_bucket_storage_default_bucket_args_doc}
class StorageDefaultBucketArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The ID of the location where the default Google Cloud Storage bucket will be created.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [StorageDefaultBucketArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The ID of the location where the default Google Cloud Storage bucket will be created.
  /// [project] The ID of the project in which the resource belongs.
  const StorageDefaultBucketArgs({
    this.deletionPolicy,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
    };
  }

  factory StorageDefaultBucketArgs.fromMap(Map<String, dynamic> map) {
    return StorageDefaultBucketArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
