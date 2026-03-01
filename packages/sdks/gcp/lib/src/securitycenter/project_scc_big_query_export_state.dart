// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProjectSccBigQueryExport resources.
class ProjectSccBigQueryExportState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? bigQueryExportId;
  /// The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String>? dataset;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form <field> <operator> <value> and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * \>, <, >=, <= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String>? filter;
  /// Email address of the user who last edited the BigQuery export.
  /// This field is set by the server and will be ignored if provided on export creation or update.
  final pulumi.Input<String>? mostRecentEditor;
  /// The resource name of this export, in the format
  /// `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  final pulumi.Input<String>? name;
  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  final pulumi.Input<String>? principal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ProjectSccBigQueryExportState].
  /// [bigQueryExportId] This must be unique within the organization.
  /// [createTime] The time at which the BigQuery export was created. This field is set by the server and will be ignored if provided on export on creation.
  /// [dataset] The dataset to write findings' updates to.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update
  /// [mostRecentEditor] Email address of the user who last edited the BigQuery export.
  /// [name] The resource name of this export, in the format
  /// [principal] The service account that needs permission to create table and upload data to the BigQuery dataset.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] The most recent time at which the BigQuery export was updated. This field is set by the server and will be ignored if provided on export creation or update.
  ProjectSccBigQueryExportState({
    pulumi.Output<String>? bigQueryExportId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filter,
    pulumi.Output<String>? mostRecentEditor,
    pulumi.Output<String>? name,
    pulumi.Output<String>? principal,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      bigQueryExportId = pulumi.Input.asOptionalInput<String>(bigQueryExportId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      mostRecentEditor = pulumi.Input.asOptionalInput<String>(mostRecentEditor),
      name = pulumi.Input.asOptionalInput<String>(name),
      principal = pulumi.Input.asOptionalInput<String>(principal),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': ?bigQueryExportId,
      'createTime': ?createTime,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'mostRecentEditor': ?mostRecentEditor,
      'name': ?name,
      'principal': ?principal,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory ProjectSccBigQueryExportState.fromMap(Map<String, dynamic> map) {
    return ProjectSccBigQueryExportState(
      bigQueryExportId: map['bigQueryExportId'] == null ? null : pulumi.Output.create<String>(map['bigQueryExportId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      mostRecentEditor: map['mostRecentEditor'] == null ? null : pulumi.Output.create<String>(map['mostRecentEditor'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principal: map['principal'] == null ? null : pulumi.Output.create<String>(map['principal'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

