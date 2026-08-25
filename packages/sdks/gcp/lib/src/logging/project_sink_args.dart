// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_sink_bigquery_options.dart';
import 'project_sink_exclusion.dart';

/// {@template pulumi_logging_project_sink_project_sink_args_doc}
/// The set of arguments for ProjectSink.
/// {@endtemplate}
/// {@macro pulumi_logging_project_sink_project_sink_args_doc}
class ProjectSinkArgs {
  /// Options that affect sinks exporting data to BigQuery. Structure documented below.
  final pulumi.Input<ProjectSinkBigqueryOptions?>? bigqueryOptions;
  /// A user managed service account that will be used to write
  /// the log entries. The format must be `serviceAccount:some@email`. This field can only be specified if you are
  /// routing logs to a destination outside this sink's project. If not specified, a Logging service account
  /// will automatically be generated.
  final pulumi.Input<String?>? customWriterIdentity;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of this sink. The maximum length of the description is 8000 characters.
  final pulumi.Input<String?>? description;
  /// The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  ///
  /// - `storage.googleapis.com/[GCS_BUCKET]`
  /// - `bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]`
  /// - `pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]/locations/global/buckets/[BUCKET_ID]`
  /// - `logging.googleapis.com/projects/[PROJECT_ID]`
  ///
  /// The writer associated with the sink must have access to write to the above resource.
  final pulumi.Input<String> destination;
  /// If set to True, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool?>? disabled;
  /// Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  final pulumi.Input<List<ProjectSinkExclusion>?>? exclusions;
  /// The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String?>? filter;
  /// The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  final pulumi.Input<String?>? name;
  /// The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// used.
  final pulumi.Input<String?>? project;
  /// Whether to use a service agent as the `writerIdentity` for this sink. If `false`,
  /// `writerIdentity` is `serviceAccount:cloud-logs@system.gserviceaccount.com` and the sink's destination must be in the
  /// same project as the sink. If `true` (the default), `writerIdentity` is a service agent shared by sinks with the same
  /// parent. You must set `uniqueWriterIdentity` to `true` to publish logs across projects or use `bigqueryOptions`.
  /// See the [`projects.sinks.create` API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.sinks/create#query-parameters)
  /// for more information.
  final pulumi.Input<bool?>? uniqueWriterIdentity;

  /// Creates a new [ProjectSinkArgs].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure documented below.
  /// [customWriterIdentity] A user managed service account that will be used to write
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A description of this sink. The maximum length of the description is 8000 characters.
  /// [destination] The destination of the sink (or, in other words, where logs are written to). Can be a Cloud Storage bucket, a PubSub topic, a BigQuery dataset, a Cloud Logging bucket, or a Google Cloud project. Examples:
  /// [disabled] If set to True, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters will not be exported. If a log entry is matched by both `filter` and one of `exclusions.filter`, it will not be exported.  Can be repeated multiple times for multiple exclusions. Structure is documented below.
  /// [filter] The filter to apply when exporting logs. Only log entries that match the filter are exported.
  /// [name] The name of the logging sink. Logging automatically creates two sinks: `_Required` and `_Default`.
  /// [project] The ID of the project to create the sink in. If omitted, the project associated with the provider is
  /// [uniqueWriterIdentity] Whether to use a service agent as the `writerIdentity` for this sink. If `false`,
  const ProjectSinkArgs({
    this.bigqueryOptions,
    this.customWriterIdentity,
    this.deletionPolicy,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.name,
    this.project,
    this.uniqueWriterIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?pulumi.Input.mapOptionalInputValue<ProjectSinkBigqueryOptions, Map<String, dynamic>>(bigqueryOptions, (value) => value.toMap()),
      'customWriterIdentity': ?customWriterIdentity,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destination': destination,
      'disabled': ?disabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ProjectSinkExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ProjectSinkExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?filter,
      'name': ?name,
      'project': ?project,
      'uniqueWriterIdentity': ?uniqueWriterIdentity,
    };
  }

  factory ProjectSinkArgs.fromMap(Map<String, dynamic> map) {
    return ProjectSinkArgs(
      bigqueryOptions: (() { final guardedValue = map['bigqueryOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSinkBigqueryOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customWriterIdentity: (() { final guardedValue = map['customWriterIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectSinkExclusion>(guardedValue, (value) => ProjectSinkExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueWriterIdentity: (() { final guardedValue = map['uniqueWriterIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
