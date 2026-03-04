// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution using the default Cloud Build pool.
class DefaultPool {
  /// Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  final pulumi.Input<String>? artifactStorage;

  /// Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [DefaultPool].
  /// [artifactStorage] Optional. Cloud Storage location where execution outputs should be stored. This can either be a bucket ("gs://my-bucket") or a path within a bucket ("gs://my-bucket/my-dir"). If unspecified, a default bucket located in the same region will be used.
  /// [serviceAccount] Optional. Google service account to use for execution. If unspecified, the project execution service account (-compute@developer.gserviceaccount.com) will be used.
  DefaultPool({this.artifactStorage, this.serviceAccount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactStorage': ?artifactStorage,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory DefaultPool.fromMap(Map<String, dynamic> map) {
    return DefaultPool(
      artifactStorage: (() {
        final guardedValue = map['artifactStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
