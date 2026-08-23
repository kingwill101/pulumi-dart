// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_billing_account_exclusion_args_doc}
/// The set of arguments for BillingAccountExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_billing_account_exclusion_args_doc}
class BillingAccountExclusionArgs {
  final pulumi.Input<String> billingAccountId;
  /// Optional. A description of this exclusion.
  final pulumi.Input<String>? description;
  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  final pulumi.Input<bool>? disabled;
  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity&lt;ERROR sample(insertId, 0.99)
  final pulumi.Input<String> filter;
  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final pulumi.Input<String>? name;

  /// Creates a new [BillingAccountExclusionArgs].
  /// [billingAccountId] Required.
  /// [description] Optional. A description of this exclusion.
  /// [disabled] Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  /// [filter] An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity&lt;ERROR sample(insertId, 0.99)
  /// [name] A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  const BillingAccountExclusionArgs({
    required this.billingAccountId,
    this.description,
    this.disabled,
    required this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': ?name,
    };
  }

  factory BillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountExclusionArgs(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
