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
    required pulumi.Output<String> billingAccountId,
    required pulumi.Output<String> bucketId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> viewId,
  }) :
      billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
      bucketId = pulumi.Input.asInput<String>(bucketId),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      viewId = pulumi.Input.asInput<String>(viewId);

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
      billingAccountId: pulumi.Output.create<String>(map['billingAccountId'] as String),
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

