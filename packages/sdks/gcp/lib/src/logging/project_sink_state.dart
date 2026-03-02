// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_sink_bigquery_options.dart';
import 'project_sink_exclusion.dart';

/// Input properties used for looking up and filtering ProjectSink resources.
class ProjectSinkState {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<ProjectSinkBigqueryOptions>? bigqueryOptions;
  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  final pulumi.Input<String>? customWriterIdentity;
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
  final pulumi.Input<List<ProjectSinkExclusion>>? exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String>? filter;
  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  final pulumi.Input<String>? name;
  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  final pulumi.Input<String>? project;
  /// Whether or not to create a unique identity associated with this sink. If `false`, then the `writer_identity` used is `serviceAccount:cloud-logs@system.gserviceaccount.com`. If `true` (the default),
  /// then a unique service account is created and used for this sink. If you wish to publish logs across projects or utilize
  /// `bigquery_options`, you must set `unique_writer_identity` to true.
  final pulumi.Input<bool>? uniqueWriterIdentity;
  /// The identity associated with this sink. This identity must be granted write access to the
  /// configured `destination`.
  final pulumi.Input<String>? writerIdentity;

  /// Creates a new [ProjectSinkState].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [customWriterIdentity] A user managed service account that will be used to write
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [name] The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  /// [project] The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// [uniqueWriterIdentity] Whether or not to create a unique identity associated with this sink. If `false`, then the `writer_identity` used is `serviceAccount:cloud-logs@system.gserviceaccount.com`. If `true` (the default),
  /// [writerIdentity] The identity associated with this sink. This identity must be granted write access to the
  ProjectSinkState({
    this.bigqueryOptions,
    this.customWriterIdentity,
    this.description,
    this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.name,
    this.project,
    this.uniqueWriterIdentity,
    this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?pulumi.Input.mapOptionalInputValue<ProjectSinkBigqueryOptions, Map<String, dynamic>>(bigqueryOptions, (value) => value.toMap()),
      'customWriterIdentity': ?customWriterIdentity,
      'description': ?description,
      'destination': ?destination,
      'disabled': ?disabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ProjectSinkExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ProjectSinkExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'name': ?name,
      'project': ?project,
      'uniqueWriterIdentity': ?uniqueWriterIdentity,
      'writerIdentity': ?writerIdentity,
    };
  }

  factory ProjectSinkState.fromMap(Map<String, dynamic> map) {
    return ProjectSinkState(
      bigqueryOptions: map['bigqueryOptions'] == null ? null : (ProjectSinkBigqueryOptions.fromMap((map['bigqueryOptions'] as Map).cast<String, dynamic>())).input(),
      customWriterIdentity: map['customWriterIdentity'] == null ? null : (map['customWriterIdentity'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<ProjectSinkExclusion>(map['exclusions'], (value) => ProjectSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      uniqueWriterIdentity: map['uniqueWriterIdentity'] == null ? null : (map['uniqueWriterIdentity'] as bool).input(),
      writerIdentity: map['writerIdentity'] == null ? null : (map['writerIdentity'] as String).input(),
    );
  }
}

