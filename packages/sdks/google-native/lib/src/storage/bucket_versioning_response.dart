// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's versioning configuration.
class BucketVersioningResponse {
  /// While set to true, versioning is fully enabled for this bucket.
  final pulumi.Input<bool> enabled;

  /// Creates a new [BucketVersioningResponse].
  /// [enabled] While set to true, versioning is fully enabled for this bucket.
  BucketVersioningResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory BucketVersioningResponse.fromMap(Map<String, dynamic> map) {
    return BucketVersioningResponse(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

