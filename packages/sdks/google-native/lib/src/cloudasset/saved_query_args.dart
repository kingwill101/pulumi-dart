// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_content.dart';

/// {@template pulumi_cloudasset_v1_saved_query_args_doc}
/// The set of arguments for SavedQuery.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_v1_saved_query_args_doc}
class SavedQueryArgs {
  /// The query content.
  final pulumi.Input<QueryContent>? content;
  /// The description of this saved query. This value should be fewer than 255 characters.
  final pulumi.Input<String>? description;
  /// Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  final pulumi.Input<String>? name;
  /// Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
  final pulumi.Input<String> savedQueryId;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  /// Creates a new [SavedQueryArgs].
  /// [content] The query content.
  /// [description] The description of this saved query. This value should be fewer than 255 characters.
  /// [labels] Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.
  /// [name] The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id
  /// [savedQueryId] Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.
  /// [v1Id] Required.
  /// [v1Id1] Required.
  SavedQueryArgs({
    this.content,
    this.description,
    this.labels,
    this.name,
    required this.savedQueryId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<QueryContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'savedQueryId': savedQueryId,
      'v1Id': v1Id,
      'v1Id1': v1Id1,
    };
  }

  factory SavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return SavedQueryArgs(
      content: map['content'] == null ? null : (QueryContent.fromMap((map['content'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      savedQueryId: (map['savedQueryId'] as String).input(),
      v1Id: (map['v1Id'] as String).input(),
      v1Id1: (map['v1Id1'] as String).input(),
    );
  }
}

