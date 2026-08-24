// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_r2_bucket_r2_bucket_args_doc}
/// The set of arguments for R2Bucket.
/// {@endtemplate}
/// {@macro pulumi_index_r2_bucket_r2_bucket_args_doc}
class R2BucketArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// Available values: "default", "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// Location of the bucket.
  /// Available values: "apac", "eeur", "enam", "weur", "wnam", "oc".  Note: `location` is only honored the first time a bucket with a given name is created. If you delete and recreate a bucket with the same name, the original bucket location will be used. It is also a best-effort, not a guarantee, of bucket location.
  final pulumi.Input<String?>? location;
  /// Name of the bucket.
  final pulumi.Input<String> name;
  /// Storage class for newly uploaded objects, unless specified otherwise.
  /// Available values: "Standard", "InfrequentAccess".
  final pulumi.Input<String?>? storageClass;

  /// Creates a new [R2BucketArgs].
  /// [accountId] Account ID.
  /// [jurisdiction] Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// [location] Location of the bucket.
  /// [name] Name of the bucket.
  /// [storageClass] Storage class for newly uploaded objects, unless specified otherwise.
  const R2BucketArgs({
    required this.accountId,
    this.jurisdiction,
    this.location,
    required this.name,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'jurisdiction': ?jurisdiction,
      'location': ?location,
      'name': name,
      'storageClass': ?storageClass,
    };
  }

  factory R2BucketArgs.fromMap(Map<String, dynamic> map) {
    return R2BucketArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
