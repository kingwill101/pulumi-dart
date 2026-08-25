// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeArtifactGcs {
  /// Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// this value would be my-bucket.
  final pulumi.Input<String?>? bucket;
  /// Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.
  /// https://storage.googleapis.com/my-bucket/foo/bar#1234567 this value would be 1234567.
  final pulumi.Input<int?>? generation;
  /// Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// this value would be foo/bar.
  final pulumi.Input<String?>? object_;

  /// Creates a new [GuestPoliciesRecipeArtifactGcs].
  /// [bucket] Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// [generation] Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.
  /// [object_] Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  const GuestPoliciesRecipeArtifactGcs({
    this.bucket,
    this.generation,
    this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'generation': ?generation,
      'object': ?object_,
    };
  }

  factory GuestPoliciesRecipeArtifactGcs.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifactGcs(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      object_: (() { final guardedValue = map['object']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
