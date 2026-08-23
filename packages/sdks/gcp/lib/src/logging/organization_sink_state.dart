// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_sink_bigquery_options.dart';
import 'organization_sink_exclusion.dart';

/// Input properties used for looking up and filtering OrganizationSink resources.
class OrganizationSinkState {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<OrganizationSinkBigqueryOptions>? bigqueryOptions;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;
  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final pulumi.Input<String>? destination;
  /// If set to True, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool>? disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<OrganizationSinkExclusion>>? exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;
  /// Whether or not to include child folders or projects in the sink export. If true, logs
  /// associated with child projects are also exported; otherwise only logs relating to the provided organization are included.
  final pulumi.Input<bool>? includeChildren;
  /// Whether or not to intercept logs from child projects. If true, matching logs will not
  /// match with sinks in child resources, except _Required sinks. This sink will be visible to child resources when listing sinks.
  final pulumi.Input<bool>? interceptChildren;
  /// The name of the logging sink.
  final pulumi.Input<String>? name;
  /// The numeric ID of the organization to be exported to the sink.
  final pulumi.Input<String>? orgId;
  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  final pulumi.Input<String>? writerIdentity;

  /// Creates a new [OrganizationSinkState].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [includeChildren] Whether or not to include child folders or projects in the sink export. If true, logs
  /// [interceptChildren] Whether or not to intercept logs from child projects. If true, matching logs will not
  /// [name] The name of the logging sink.
  /// [orgId] The numeric ID of the organization to be exported to the sink.
  /// [writerIdentity] The identity associated with this sink. This identity must be granted write access to the
  const OrganizationSinkState({
    this.bigqueryOptions,
    this.deletionPolicy,
    this.description,
    this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.includeChildren,
    this.interceptChildren,
    this.name,
    this.orgId,
    this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?pulumi.Input.mapOptionalInputValue<OrganizationSinkBigqueryOptions, Map<String, dynamic>>(bigqueryOptions, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destination': ?destination,
      'disabled': ?disabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSinkExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<OrganizationSinkExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'includeChildren': ?includeChildren,
      'interceptChildren': ?interceptChildren,
      'name': ?name,
      'orgId': ?orgId,
      'writerIdentity': ?writerIdentity,
    };
  }

  factory OrganizationSinkState.fromMap(Map<String, dynamic> map) {
    return OrganizationSinkState(
      bigqueryOptions: (() { final guardedValue = map['bigqueryOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSinkExclusion>(guardedValue, (value) => OrganizationSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeChildren: (() { final guardedValue = map['includeChildren']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      interceptChildren: (() { final guardedValue = map['interceptChildren']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writerIdentity: (() { final guardedValue = map['writerIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
