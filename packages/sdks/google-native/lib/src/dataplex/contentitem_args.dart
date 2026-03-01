// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_content_notebook.dart';
import 'google_cloud_dataplex_v1_content_sql_script.dart';

/// {@template pulumi_dataplex_v1_contentitem_args_doc}
/// The set of arguments for Contentitem.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_contentitem_args_doc}
class ContentitemArgs {
  /// Content data in string format.
  final pulumi.Input<String> dataText;
  /// Optional. Description of the content.
  final pulumi.Input<String>? description;
  /// Optional. User defined labels for the content.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;
  /// Notebook related configurations.
  final pulumi.Input<GoogleCloudDataplexV1ContentNotebook>? notebook;
  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  final pulumi.Input<String> path;
  final pulumi.Input<String>? project;
  /// Sql Script related configurations.
  final pulumi.Input<GoogleCloudDataplexV1ContentSqlScript>? sqlScript;

  /// Creates a new [ContentitemArgs].
  /// [dataText] Content data in string format.
  /// [description] Optional. Description of the content.
  /// [labels] Optional. User defined labels for the content.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [notebook] Notebook related configurations.
  /// [path] The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  /// [project] Optional.
  /// [sqlScript] Sql Script related configurations.
  ContentitemArgs({
    required pulumi.Output<String> dataText,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> lakeId,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleCloudDataplexV1ContentNotebook>? notebook,
    required pulumi.Output<String> path,
    pulumi.Output<String>? project,
    pulumi.Output<GoogleCloudDataplexV1ContentSqlScript>? sqlScript,
  }) :
      dataText = pulumi.Input.asInput<String>(dataText),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      lakeId = pulumi.Input.asInput<String>(lakeId),
      location = pulumi.Input.asOptionalInput<String>(location),
      notebook = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ContentNotebook>(notebook),
      path = pulumi.Input.asInput<String>(path),
      project = pulumi.Input.asOptionalInput<String>(project),
      sqlScript = pulumi.Input.asOptionalInput<GoogleCloudDataplexV1ContentSqlScript>(sqlScript);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataText': dataText,
      'description': ?description,
      'labels': ?labels,
      'lakeId': lakeId,
      'location': ?location,
      'notebook': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1ContentNotebook, Map<String, dynamic>>(notebook, (value) => value.toMap()),
      'path': path,
      'project': ?project,
      'sqlScript': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDataplexV1ContentSqlScript, Map<String, dynamic>>(sqlScript, (value) => value.toMap()),
    };
  }

  factory ContentitemArgs.fromMap(Map<String, dynamic> map) {
    return ContentitemArgs(
      dataText: pulumi.Output.create<String>(map['dataText'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      lakeId: pulumi.Output.create<String>(map['lakeId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      notebook: map['notebook'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1ContentNotebook>(GoogleCloudDataplexV1ContentNotebook.fromMap((map['notebook'] as Map).cast<String, dynamic>())),
      path: pulumi.Output.create<String>(map['path'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sqlScript: map['sqlScript'] == null ? null : pulumi.Output.create<GoogleCloudDataplexV1ContentSqlScript>(GoogleCloudDataplexV1ContentSqlScript.fromMap((map['sqlScript'] as Map).cast<String, dynamic>())),
    );
  }
}

