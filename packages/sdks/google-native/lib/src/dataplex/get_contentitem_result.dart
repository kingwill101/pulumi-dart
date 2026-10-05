// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_content_notebook_response.dart';
import 'google_cloud_dataplex_v1_content_sql_script_response.dart';

/// Result data returned by getContentitem.
class GetContentitemResult {
  /// Content creation time.
  final String? createTime;
  /// Content data in string format.
  final String? dataText;
  /// Optional. Description of the content.
  final String? description;
  /// Optional. User defined labels for the content.
  final Map<String, String>? labels;
  /// The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  final String? name;
  /// Notebook related configurations.
  final GoogleCloudDataplexV1ContentNotebookResponse? notebook;
  /// The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  final String? path;
  /// Sql Script related configurations.
  final GoogleCloudDataplexV1ContentSqlScriptResponse? sqlScript;
  /// System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  final String? uid;
  /// The time when the content was last updated.
  final String? updateTime;

  /// Creates a new [GetContentitemResult].
  /// [createTime] Content creation time.
  /// [dataText] Content data in string format.
  /// [description] Optional. Description of the content.
  /// [labels] Optional. User defined labels for the content.
  /// [name] The relative resource name of the content, of the form: projects/{project_id}/locations/{location_id}/lakes/{lake_id}/content/{content_id}
  /// [notebook] Notebook related configurations.
  /// [path] The path for the Content file, represented as directory structure. Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and slashes.
  /// [sqlScript] Sql Script related configurations.
  /// [uid] System generated globally unique ID for the content. This ID will be different if the content is deleted and re-created with the same name.
  /// [updateTime] The time when the content was last updated.
  const GetContentitemResult({
    this.createTime,
    this.dataText,
    this.description,
    this.labels,
    this.name,
    this.notebook,
    this.path,
    this.sqlScript,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataText': ?dataText,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'notebook': ?notebook?.toMap(),
      'path': ?path,
      'sqlScript': ?sqlScript?.toMap(),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetContentitemResult.fromMap(Map<String, dynamic> map) {
    return GetContentitemResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataText: (() { final guardedValue = map['dataText']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notebook: (() { final guardedValue = map['notebook']; if (guardedValue == null) return null; return GoogleCloudDataplexV1ContentNotebookResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlScript: (() { final guardedValue = map['sqlScript']; if (guardedValue == null) return null; return GoogleCloudDataplexV1ContentSqlScriptResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
