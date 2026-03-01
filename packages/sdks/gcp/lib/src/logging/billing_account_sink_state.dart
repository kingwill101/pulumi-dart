// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_sink_bigquery_options.dart';
import 'billing_account_sink_exclusion.dart';

/// Input properties used for looking up and filtering BillingAccountSink resources.
class BillingAccountSinkState {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<BillingAccountSinkBigqueryOptions>? bigqueryOptions;
  /// The billing account exported to the sink.
  final pulumi.Input<String>? billingAccount;
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
  final pulumi.Input<String>? destination;
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
  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  final pulumi.Input<String>? writerIdentity;

  /// Creates a new [BillingAccountSinkState].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [billingAccount] The billing account exported to the sink.
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [name] The name of the logging sink.
  /// [writerIdentity] The identity associated with this sink. This identity must be granted write access to the
  BillingAccountSinkState({
    pulumi.Output<BillingAccountSinkBigqueryOptions>? bigqueryOptions,
    pulumi.Output<String>? billingAccount,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destination,
    pulumi.Output<bool>? disabled,
    pulumi.Output<List<BillingAccountSinkExclusion>>? exclusions,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? writerIdentity,
  }) :
      bigqueryOptions = pulumi.Input.asOptionalInput<BillingAccountSinkBigqueryOptions>(bigqueryOptions),
      billingAccount = pulumi.Input.asOptionalInput<String>(billingAccount),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      exclusions = pulumi.Input.asOptionalInput<List<BillingAccountSinkExclusion>>(exclusions),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      writerIdentity = pulumi.Input.asOptionalInput<String>(writerIdentity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?pulumi.Input.mapOptionalInputValue<BillingAccountSinkBigqueryOptions, Map<String, dynamic>>(bigqueryOptions, (value) => value.toMap()),
      'billingAccount': ?billingAccount,
      'description': ?description,
      'destination': ?destination,
      'disabled': ?disabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<BillingAccountSinkExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<BillingAccountSinkExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'name': ?name,
      'writerIdentity': ?writerIdentity,
    };
  }

  factory BillingAccountSinkState.fromMap(Map<String, dynamic> map) {
    return BillingAccountSinkState(
      bigqueryOptions: map['bigqueryOptions'] == null ? null : pulumi.Output.create<BillingAccountSinkBigqueryOptions>(BillingAccountSinkBigqueryOptions.fromMap((map['bigqueryOptions'] as Map).cast<String, dynamic>())),
      billingAccount: map['billingAccount'] == null ? null : pulumi.Output.create<String>(map['billingAccount'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      exclusions: map['exclusions'] == null ? null : pulumi.Output.create<List<BillingAccountSinkExclusion>>(pulumi.Input.decodeList<BillingAccountSinkExclusion>(map['exclusions'], (value) => BillingAccountSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      writerIdentity: map['writerIdentity'] == null ? null : pulumi.Output.create<String>(map['writerIdentity'] as String),
    );
  }
}

