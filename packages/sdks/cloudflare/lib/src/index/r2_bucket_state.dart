// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering R2Bucket resources.
class R2BucketState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Creation timestamp.
  final pulumi.Input<String?>? creationDate;
  /// Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// Available values: "default", "eu", "fedramp", "us".
  final pulumi.Input<String?>? jurisdiction;
  /// Location of the bucket.
  /// Available values: "apac", "eeur", "enam", "weur", "wnam", "oc".  Note: `location` is only honored the first time a bucket with a given name is created. If you delete and recreate a bucket with the same name, the original bucket location will be used. It is also a best-effort, not a guarantee, of bucket location.
  final pulumi.Input<String?>? location;
  /// Name of the bucket.
  final pulumi.Input<String?>? name;
  /// Storage class for newly uploaded objects, unless specified otherwise.
  /// Available values: "Standard", "InfrequentAccess".
  final pulumi.Input<String?>? storageClass;

  /// Creates a new [R2BucketState].
  /// [accountId] Account ID.
  /// [creationDate] Creation timestamp.
  /// [jurisdiction] Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// [location] Location of the bucket.
  /// [name] Name of the bucket.
  /// [storageClass] Storage class for newly uploaded objects, unless specified otherwise.
  const R2BucketState({
    this.accountId,
    this.creationDate,
    this.jurisdiction,
    this.location,
    this.name,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'creationDate': ?creationDate,
      'jurisdiction': ?jurisdiction,
      'location': ?location,
      'name': ?name,
      'storageClass': ?storageClass,
    };
  }

  factory R2BucketState.fromMap(Map<String, dynamic> map) {
    return R2BucketState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
