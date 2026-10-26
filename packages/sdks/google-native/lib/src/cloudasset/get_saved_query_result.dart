// ignore_for_file: unused_element, unnecessary_cast

import 'query_content_response.dart';

/// Result data returned by getSavedQuery.
class GetSavedQueryResult {
  /// The query content.
  final QueryContentResponse? content;
  /// The create time of this saved query.
  final String? createTime;
  /// The account's email address who has created this saved query.
  final String? creator;
  /// The description of this saved query. This value should be fewer than 255 characters.
  final String? description;
  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  final Map<String, String>? labels;
  /// The last update time of this saved query.
  final String? lastUpdateTime;
  /// The account's email address who has updated this saved query most recently.
  final String? lastUpdater;
  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  final String? name;

  /// Creates a new [GetSavedQueryResult].
  /// [content] The query content.
  /// [createTime] The create time of this saved query.
  /// [creator] The account's email address who has created this saved query.
  /// [description] The description of this saved query. This value should be fewer than 255 characters.
  /// [labels] Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  /// [lastUpdateTime] The last update time of this saved query.
  /// [lastUpdater] The account's email address who has updated this saved query most recently.
  /// [name] The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  const GetSavedQueryResult({
    this.content,
    this.createTime,
    this.creator,
    this.description,
    this.labels,
    this.lastUpdateTime,
    this.lastUpdater,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content?.toMap(),
      'createTime': ?createTime,
      'creator': ?creator,
      'description': ?description,
      'labels': ?labels,
      'lastUpdateTime': ?lastUpdateTime,
      'lastUpdater': ?lastUpdater,
      'name': ?name,
    };
  }

  factory GetSavedQueryResult.fromMap(Map<String, dynamic> map) {
    return GetSavedQueryResult(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return QueryContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastUpdateTime: (() { final guardedValue = map['lastUpdateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdater: (() { final guardedValue = map['lastUpdater']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
