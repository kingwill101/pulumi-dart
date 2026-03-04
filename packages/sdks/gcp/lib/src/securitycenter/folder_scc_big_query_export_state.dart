// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FolderSccBigQueryExport resources.
class FolderSccBigQueryExportState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? bigQueryExportId;

  /// The time at which the BigQuery export was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;

  /// The dataset to write findings' updates to.
  /// Its format is "projects/[projectId]/datasets/[bigquery_dataset_id]".
  /// BigQuery Dataset unique ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_).
  final pulumi.Input<String>? dataset;

  /// The description of the export (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// Expression that defines the filter to apply across create/update
  /// events of findings. The
  /// expression is a list of zero or more restrictions combined via
  /// logical operators AND and OR. Parentheses are supported, and OR
  /// has higher precedence than AND.
  /// Restrictions have the form &lt;field&gt; &lt;operator&gt; &lt;value&gt; and may have
  /// a - character in front of them to indicate negation. The fields
  /// map to those defined in the corresponding resource.
  /// The supported operators are:
  /// * = for all value types.
  /// * &gt;, &lt;, &gt;=, &lt;= for integer values.
  /// * :, meaning substring matching, for strings.
  /// The supported value types are:
  /// * string literals in quotes.
  /// * integer literals without quotes.
  /// * boolean literals true and false without quotes.
  /// See
  /// [Filtering notifications](https://cloud.google.com/security-command-center/docs/how-to-api-filter-notifications)
  /// for information on how to write a filter.
  final pulumi.Input<String>? filter;

  /// The folder where Cloud Security Command Center Big Query Export
  /// Config lives in.
  final pulumi.Input<String>? folder;

  /// Email address of the user who last edited the BigQuery export.
  final pulumi.Input<String>? mostRecentEditor;

  /// The resource name of this export, in the format
  /// `projects/{{project}}/bigQueryExports/{{big_query_export_id}}`.
  /// This field is provided in responses, and is ignored when provided in create requests.
  final pulumi.Input<String>? name;

  /// The service account that needs permission to create table and upload data to the BigQuery dataset.
  final pulumi.Input<String>? principal;

  /// The most recent time at which the BigQuery export was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FolderSccBigQueryExportState].
  /// [bigQueryExportId] This must be unique within the organization.
  /// [createTime] The time at which the BigQuery export was created.
  /// [dataset] The dataset to write findings' updates to.
  /// [description] The description of the export (max of 1024 characters).
  /// [filter] Expression that defines the filter to apply across create/update
  /// [folder] The folder where Cloud Security Command Center Big Query Export
  /// [mostRecentEditor] Email address of the user who last edited the BigQuery export.
  /// [name] The resource name of this export, in the format
  /// [principal] The service account that needs permission to create table and upload data to the BigQuery dataset.
  /// [updateTime] The most recent time at which the BigQuery export was updated.
  FolderSccBigQueryExportState({
    this.bigQueryExportId,
    this.createTime,
    this.dataset,
    this.description,
    this.filter,
    this.folder,
    this.mostRecentEditor,
    this.name,
    this.principal,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': ?bigQueryExportId,
      'createTime': ?createTime,
      'dataset': ?dataset,
      'description': ?description,
      'filter': ?filter,
      'folder': ?folder,
      'mostRecentEditor': ?mostRecentEditor,
      'name': ?name,
      'principal': ?principal,
      'updateTime': ?updateTime,
    };
  }

  factory FolderSccBigQueryExportState.fromMap(Map<String, dynamic> map) {
    return FolderSccBigQueryExportState(
      bigQueryExportId: (() {
        final guardedValue = map['bigQueryExportId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataset: (() {
        final guardedValue = map['dataset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mostRecentEditor: (() {
        final guardedValue = map['mostRecentEditor'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principal: (() {
        final guardedValue = map['principal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
