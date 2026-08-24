// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnippetListResult {
  /// Indicates when the snippet was created.
  final pulumi.Input<String> createdOn;
  /// Identify the snippet.
  final pulumi.Input<String> id;
  /// Indicates when the snippet was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Identify the snippet.
  final pulumi.Input<String> snippetName;

  /// Creates a new [GetSnippetListResult].
  /// [createdOn] Indicates when the snippet was created.
  /// [id] Identify the snippet.
  /// [modifiedOn] Indicates when the snippet was last modified.
  /// [snippetName] Identify the snippet.
  const GetSnippetListResult({
    required this.createdOn,
    required this.id,
    required this.modifiedOn,
    required this.snippetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'id': id,
      'modifiedOn': modifiedOn,
      'snippetName': snippetName,
    };
  }

  factory GetSnippetListResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetListResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
    );
  }
}
