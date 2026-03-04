// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'big_query_options.dart';
import 'log_exclusion.dart';
import 'organization_sink_output_version_format.dart';

/// {@template pulumi_logging_v2_organization_sink_args_doc}
/// The set of arguments for OrganizationSink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_organization_sink_args_doc}
class OrganizationSinkArgs {
  /// Optional. Options that affect sinks exporting data to BigQuery.
  final pulumi.Input<BigQueryOptions>? bigqueryOptions;

  /// Optional. A service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some@email. This field can only be specified if you are routing logs to a destination outside this sink's project. If not specified, a Logging service account will automatically be generated.
  final pulumi.Input<String>? customWriterIdentity;

  /// Optional. A description of this sink.The maximum length of the description is 8000 characters.
  final pulumi.Input<String>? description;

  /// The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  final pulumi.Input<String> destination;

  /// Optional. If set to true, then this sink is disabled and it does not export any log entries.
  final pulumi.Input<bool>? disabled;

  /// Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
  final pulumi.Input<List<LogExclusion>>? exclusions;

  /// Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity&gt;=ERROR
  final pulumi.Input<String>? filter;

  /// Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:("projects/test-project1/" OR "projects/test-project2/") AND resource.type=gce_instance
  final pulumi.Input<bool>? includeChildren;

  /// The client-assigned sink identifier, unique within the project.For example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Deprecated. This field is unused.
  final pulumi.Input<OrganizationSinkOutputVersionFormat>? outputVersionFormat;

  /// Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a service agent (https://cloud.google.com/iam/docs/service-account-types#service-agents) used by the sinks with the same parent. For more information, see writer_identity in LogSink.
  final pulumi.Input<bool>? uniqueWriterIdentity;

  /// Creates a new [OrganizationSinkArgs].
  /// [bigqueryOptions] Optional. Options that affect sinks exporting data to BigQuery.
  /// [customWriterIdentity] Optional. A service account provided by the caller that will be used to write the log entries. The format must be serviceAccount:some@email. This field can only be specified if you are routing logs to a destination outside this sink's project. If not specified, a Logging service account will automatically be generated.
  /// [description] Optional. A description of this sink.The maximum length of the description is 8000 characters.
  /// [destination] The export destination: "storage.googleapis.com/[GCS_BUCKET]" "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set when the sink is created, must have permission to write to the destination or else the log entries are not exported. For more information, see Exporting Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-logs).
  /// [disabled] Optional. If set to true, then this sink is disabled and it does not export any log entries.
  /// [exclusions] Optional. Log entries that match any of these exclusion filters will not be exported.If a log entry is matched by both filter and one of exclusion_filters it will not be exported.
  /// [filter] Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries). The only exported log entries are those that are in the resource owning the sink and that match the filter.For example:logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity&gt;=ERROR
  /// [includeChildren] Optional. This field applies only to sinks owned by organizations and folders. If the field is false, the default, only the logs owned by the sink's parent resource are available for export. If the field is true, then log entries from all the projects, folders, and billing accounts contained in the sink's parent resource are also available for export. Whether a particular log entry from the children is exported depends on the sink's filter expression.For example, if this field is true, then the filter resource.type=gce_instance would export all Compute Engine VM instance log entries from all projects in the sink's parent.To only export entries from certain child projects, filter on the project part of the log name:logName:("projects/test-project1/" OR "projects/test-project2/") AND resource.type=gce_instance
  /// [name] The client-assigned sink identifier, unique within the project.For example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100 characters and can include only the following characters: upper and lower-case alphanumeric characters, underscores, hyphens, and periods. First character has to be alphanumeric.
  /// [organizationId] Required.
  /// [outputVersionFormat] Deprecated. This field is unused.
  /// [uniqueWriterIdentity] Optional. Determines the kind of IAM identity returned as writer_identity in the new sink. If this value is omitted or set to false, and if the sink's parent is a project, then the value returned as writer_identity is the same group or service account used by Cloud Logging before the addition of writer identities to this API. The sink's destination must be in the same project as the sink itself.If this field is set to true, or if the sink is owned by a non-project resource such as an organization, then the value of writer_identity will be a service agent (https://cloud.google.com/iam/docs/service-account-types#service-agents) used by the sinks with the same parent. For more information, see writer_identity in LogSink.
  OrganizationSinkArgs({
    this.bigqueryOptions,
    this.customWriterIdentity,
    this.description,
    required this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.includeChildren,
    this.name,
    required this.organizationId,
    this.outputVersionFormat,
    this.uniqueWriterIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions':
          ?pulumi.Input.mapOptionalInputValue<
            BigQueryOptions,
            Map<String, dynamic>
          >(bigqueryOptions, (value) => value.toMap()),
      'customWriterIdentity': ?customWriterIdentity,
      'description': ?description,
      'destination': destination,
      'disabled': ?disabled,
      'exclusions':
          ?pulumi.Input.mapOptionalInputValue<
            List<LogExclusion>,
            List<Map<String, dynamic>>
          >(
            exclusions,
            (value) =>
                pulumi.Input.encodeList<LogExclusion, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'filter': ?filter,
      'includeChildren': ?includeChildren,
      'name': ?name,
      'organizationId': organizationId,
      'outputVersionFormat':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationSinkOutputVersionFormat,
            String
          >(outputVersionFormat, (value) => value.wireValue),
      'uniqueWriterIdentity': ?uniqueWriterIdentity,
    };
  }

  factory OrganizationSinkArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSinkArgs(
      bigqueryOptions: (() {
        final guardedValue = map['bigqueryOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BigQueryOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      customWriterIdentity: (() {
        final guardedValue = map['customWriterIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exclusions: (() {
        final guardedValue = map['exclusions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LogExclusion>(
            guardedValue,
            (value) =>
                LogExclusion.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includeChildren: (() {
        final guardedValue = map['includeChildren'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      outputVersionFormat: (() {
        final guardedValue = map['outputVersionFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OrganizationSinkOutputVersionFormat.fromValue(guardedValue as String),
        );
      })(),
      uniqueWriterIdentity: (() {
        final guardedValue = map['uniqueWriterIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
