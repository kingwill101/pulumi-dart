// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_bucket_args_doc}
/// Arguments for getBillingAccountBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_bucket_args_doc}
class GetBillingAccountBucketArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;

  /// Creates a new [GetBillingAccountBucketArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [location] Required.
  GetBillingAccountBucketArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> location,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      bucketId = pulumi.Input.asInput<String>(bucketId),
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'bucketId': bucketId,
      'location': location,
    };
  }

  factory GetBillingAccountBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

