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
  final pulumi.Input<BillingAccountSinkBigqueryOptions>? bigqueryOptions;
  /// The billing account exported to the sink.
  final pulumi.Input<String> billingAccount;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
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
  final pulumi.Input<bool>? disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<BillingAccountSinkExclusion>>? exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;
  /// The name of the logging sink.
  final pulumi.Input<String>? name;

  /// Creates a new [BillingAccountSinkArgs].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [billingAccount] The billing account exported to the sink.
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [name] The name of the logging sink.
  BillingAccountSinkArgs({
    this.bigqueryOptions,
    required this.billingAccount,
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
      bigqueryOptions: map['bigqueryOptions'] == null ? null : (BillingAccountSinkBigqueryOptions.fromMap((map['bigqueryOptions']! as Map).cast<String, dynamic>())).input(),
      billingAccount: (map['billingAccount'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destination: (map['destination'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<BillingAccountSinkExclusion>(map['exclusions']!, (value) => BillingAccountSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

