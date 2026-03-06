// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_billing_account_exclusion_billing_account_exclusion_args_doc}
/// The set of arguments for BillingAccountExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_billing_account_exclusion_billing_account_exclusion_args_doc}
class BillingAccountExclusionArgs {
  /// The billing account to create the exclusion for.
  final pulumi.Input<String> billingAccount;
  /// A human-readable description.
  final pulumi.Input<String>? description;
  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  final pulumi.Input<bool>? disabled;
  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;
  /// The name of the logging exclusion.
  final pulumi.Input<String>? name;

  /// Creates a new [BillingAccountExclusionArgs].
  /// [billingAccount] The billing account to create the exclusion for.
  /// [description] A human-readable description.
  /// [disabled] Whether this exclusion rule should be disabled or not. This defaults to
  /// [filter] The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// [name] The name of the logging exclusion.
  const BillingAccountExclusionArgs({
    required this.billingAccount,
    this.description,
    this.disabled,
    required this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccount': billingAccount,
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': ?name,
    };
  }

  factory BillingAccountExclusionArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountExclusionArgs(
      billingAccount: pulumi.Input.fromValue(map['billingAccount'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

