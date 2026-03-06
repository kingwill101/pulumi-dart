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
  const GetBillingAccountBucketViewArgs({
    required this.billingAccountId,
    required this.bucketId,
    required this.location,
    required this.viewId,
  });

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
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}

