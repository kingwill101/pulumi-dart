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
  GetBillingAccountBucketLinkArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> linkId,
    required pulumi.Output<String> location,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      bucketId = pulumi.Input.asInput<String>(bucketId),
      linkId = pulumi.Input.asInput<String>(linkId),
      location = pulumi.Input.asInput<String>(location);

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
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

