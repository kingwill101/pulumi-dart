// ignore_for_file: unused_element, unnecessary_cast

import 'query_content_response.dart';

/// Result data returned by getSavedQuery.
class GetSavedQueryResult {
  /// The query content.
  final QueryContentResponse content;
  /// The create time of this saved query.
  final String createTime;
  /// The account's email address who has created this saved query.
  final String creator;
  /// The description of this saved query. This value should be fewer than 255 characters.
  final String description;
  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  final Map<String, String> labels;
  /// The last update time of this saved query.
  final String lastUpdateTime;
  /// The account's email address who has updated this saved query most recently.
  final String lastUpdater;
  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  final String name;

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
    required this.content,
    required this.createTime,
    required this.creator,
    required this.description,
    required this.labels,
    required this.lastUpdateTime,
    required this.lastUpdater,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content.toMap(),
      'createTime': createTime,
      'creator': creator,
      'description': description,
      'labels': labels,
      'lastUpdateTime': lastUpdateTime,
      'lastUpdater': lastUpdater,
      'name': name,
    };
  }

  factory GetSavedQueryResult.fromMap(Map<String, dynamic> map) {
    return GetSavedQueryResult(
      content: QueryContentResponse.fromMap((map['content']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      creator: map['creator'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lastUpdateTime: map['lastUpdateTime'] as String,
      lastUpdater: map['lastUpdater'] as String,
      name: map['name'] as String,
    );
  }
}
