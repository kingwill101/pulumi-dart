// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_bucket_view_args_doc}
/// Arguments for getBillingAccountBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_bucket_view_args_doc}
class GetBillingAccountBucketViewArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetBillingAccountBucketViewArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [location] Required.
  /// [viewId] Required.
  GetBillingAccountBucketViewArgs({
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> viewId,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      bucketId = pulumi.Input.asInput<String>(bucketId),
      location = pulumi.Input.asInput<String>(location),
      viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'bucketId': bucketId,
      'location': location,
      'viewId': viewId,
    };
  }

  factory GetBillingAccountBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketViewArgs(
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

