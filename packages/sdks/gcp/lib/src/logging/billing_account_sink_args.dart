// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_sink_bigquery_options.dart';
import 'billing_account_sink_exclusion.dart';

/// {@template pulumi_logging_billing_account_sink_billing_account_sink_args_doc}
/// The set of arguments for BillingAccountSink.
/// {@endtemplate}
/// {@macro pulumi_logging_billing_account_sink_billing_account_sink_args_doc}
class BillingAccountSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<BillingAccountSinkBigqueryOptions?>? bigqueryOptions;
  /// The billing account exported to the sink.
  final pulumi.Input<String> billingAccount;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String?>? description;
  /// The destination of the sink (or, in other words, where logs are written to). Can be a
  /// Cloud Storage bucket, a PubSub topic, a BigQuery dataset or a Cloud Logging bucket. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]]/locations/global/buckets/[BUCKET_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final pulumi.Input<String> destination;
  /// If set to True, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool?>? disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<BillingAccountSinkExclusion>?>? exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String?>? filter;
  /// The name of the logging sink.
  final pulumi.Input<String?>? name;

  /// Creates a new [BillingAccountSinkArgs].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [billingAccount] The billing account exported to the sink.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [name] The name of the logging sink.
  const BillingAccountSinkArgs({
    this.bigqueryOptions,
    required this.billingAccount,
    this.deletionPolicy,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?pulumi.Input.mapOptionalInputValue<BillingAccountSinkBigqueryOptions, Map<String, dynamic>>(bigqueryOptions, (value) => value.toMap()),
      'billingAccount': billingAccount,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destination': destination,
      'disabled': ?disabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<BillingAccountSinkExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<BillingAccountSinkExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'name': ?name,
    };
  }

  factory BillingAccountSinkArgs.fromMap(Map<String, dynamic> map) {
    return BillingAccountSinkArgs(
      bigqueryOptions: (() { final guardedValue = map['bigqueryOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingAccountSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      billingAccount: pulumi.Input.fromValue(map['billingAccount'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BillingAccountSinkExclusion>(guardedValue, (value) => BillingAccountSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
