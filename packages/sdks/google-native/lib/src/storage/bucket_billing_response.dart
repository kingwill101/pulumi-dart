// ignore_for_file: unused_element, unnecessary_cast


/// The bucket's billing configuration.
class BucketBillingResponse {
  /// When set to true, Requester Pays is enabled for this bucket.
  final bool requesterPays;

  /// Creates a new [BucketBillingResponse].
  /// [requesterPays] When set to true, Requester Pays is enabled for this bucket.
  BucketBillingResponse({
    required this.requesterPays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requesterPays': requesterPays,
    };
  }

  factory BucketBillingResponse.fromMap(Map<String, dynamic> map) {
    return BucketBillingResponse(
      requesterPays: map['requesterPays'] as bool,
    );
  }
}

