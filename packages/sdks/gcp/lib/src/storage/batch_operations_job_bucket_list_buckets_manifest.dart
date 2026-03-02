// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BatchOperationsJobBucketListBucketsManifest {
  /// Specifies objects in a manifest file.
  final pulumi.Input<String>? manifestLocation;

  /// Creates a new [BatchOperationsJobBucketListBucketsManifest].
  /// [manifestLocation] Specifies objects in a manifest file.
  BatchOperationsJobBucketListBucketsManifest({
    this.manifestLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manifestLocation': ?manifestLocation,
    };
  }

  factory BatchOperationsJobBucketListBucketsManifest.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobBucketListBucketsManifest(
      manifestLocation: map['manifestLocation'] == null ? null : (map['manifestLocation'] as String).input(),
    );
  }
}

