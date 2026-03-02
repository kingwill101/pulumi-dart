// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's billing configuration.
class BucketBilling {
  /// When set to true, Requester Pays is enabled for this bucket.
  final pulumi.Input<bool>? requesterPays;

  /// Creates a new [BucketBilling].
  /// [requesterPays] When set to true, Requester Pays is enabled for this bucket.
  BucketBilling({
    this.requesterPays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requesterPays': ?requesterPays,
    };
  }

  factory BucketBilling.fromMap(Map<String, dynamic> map) {
    return BucketBilling(
      requesterPays: map['requesterPays'] == null ? null : (map['requesterPays']! as bool).input(),
    );
  }
}

