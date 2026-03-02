// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_content_notebook.dart';
import 'google_cloud_dataplex_v1_content_sql_script.dart';

/// {@template pulumi_dataplex_v1_content_args_doc}
/// The set of arguments for Content.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_content_args_doc}
class ContentArgs {
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

  /// Creates a new [ContentArgs].
  /// [dataText] Content data in string format.
  /// [description] Optional. Description of the content.
  /// [labels] Optional. User defined labels for the content.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [notebook] Notebook related configurations.
  /// [path] The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  /// [project] Optional.
  /// [sqlScript] Sql Script related configurations.
  ContentArgs({
    required this.dataText,
    this.description,
    this.labels,
    required this.lakeId,
    this.location,
    this.notebook,
    required this.path,
    this.project,
    this.sqlScript,
  });

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

  factory ContentArgs.fromMap(Map<String, dynamic> map) {
    return ContentArgs(
      dataText: (map['dataText'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      notebook: map['notebook'] == null ? null : (GoogleCloudDataplexV1ContentNotebook.fromMap((map['notebook']! as Map).cast<String, dynamic>())).input(),
      path: (map['path'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      sqlScript: map['sqlScript'] == null ? null : (GoogleCloudDataplexV1ContentSqlScript.fromMap((map['sqlScript']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

