// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnippetsListResult {
  /// The timestamp of when the snippet was created.
  final pulumi.Input<String> createdOn;
  /// The timestamp of when the snippet was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The identifying name of the snippet.
  final pulumi.Input<String> snippetName;

  /// Creates a new [GetSnippetsListResult].
  /// [createdOn] The timestamp of when the snippet was created.
  /// [modifiedOn] The timestamp of when the snippet was last modified.
  /// [snippetName] The identifying name of the snippet.
  const GetSnippetsListResult({
    required this.createdOn,
    required this.modifiedOn,
    required this.snippetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': createdOn,
      'modifiedOn': modifiedOn,
      'snippetName': snippetName,
    };
  }

  factory GetSnippetsListResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetsListResult(
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
    );
  }
}
