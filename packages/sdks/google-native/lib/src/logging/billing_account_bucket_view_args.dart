// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_billing_account_bucket_view_args_doc}
/// The set of arguments for BillingAccountBucketView.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_billing_account_bucket_view_args_doc}
class BillingAccountBucketViewArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;

  /// Describes this view.
  final pulumi.Input<String>? description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  final pulumi.Input<String>? filter;
  final pulumi.Input<String>? location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  final pulumi.Input<String>? name;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  final pulumi.Input<String> viewId;

  /// Creates a new [BillingAccountBucketViewArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [description] Describes this view.
  /// [filter] Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  /// [location] Optional.
  /// [name] The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  /// [viewId] Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  BillingAccountBucketViewArgs({
    required this.billingAccountId,
    required this.bucketId,
    this.description,
    this.filter,
    this.location,
    this.name,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'bucketId': bucketId,
      'description': ?description,
      'filter': ?filter,
      'location': ?location,
      'name': ?name,
      'viewId': viewId,
    };
  }

  factory BillingAccountBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountBucketViewArgs(
      billingAccountId: pulumi.Input.fromValue(
        map['billingAccountId'] as String,
      ),
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}
