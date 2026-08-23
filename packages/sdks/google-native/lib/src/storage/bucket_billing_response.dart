// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's billing configuration.
class BucketBillingResponse {
  /// When set to true, Requester Pays is enabled for this bucket.
  final pulumi.Input<bool> requesterPays;

  /// Creates a new [BucketBillingResponse].
  /// [requesterPays] When set to true, Requester Pays is enabled for this bucket.
  const BucketBillingResponse({
    required this.requesterPays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requesterPays': requesterPays,
    };
  }

  factory BucketBillingResponse.fromMap(Map<String, dynamic> map) {
    return BucketBillingResponse(
      requesterPays: pulumi.Input.fromValue(map['requesterPays'] as bool),
    );
  }
}
