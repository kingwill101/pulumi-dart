// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_bucket_link_args_doc}
/// Arguments for getBillingAccountBucketLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_bucket_link_args_doc}
class GetBillingAccountBucketLinkArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;

  /// Creates a new [GetBillingAccountBucketLinkArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  const GetBillingAccountBucketLinkArgs({
    required this.billingAccountId,
    required this.bucketId,
    required this.linkId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'bucketId': bucketId,
      'linkId': linkId,
      'location': location,
    };
  }

  factory GetBillingAccountBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketLinkArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      linkId: pulumi.Input.fromValue(map['linkId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

