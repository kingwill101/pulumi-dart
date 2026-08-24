// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_snippets_get_snippets_args_doc}
/// Arguments for getSnippets.
/// {@endtemplate}
/// {@macro pulumi_index_get_snippets_get_snippets_args_doc}
class GetSnippetsArgs {
  /// The identifying name of the snippet.
  final pulumi.Input<String> snippetName;
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetSnippetsArgs].
  /// [snippetName] The identifying name of the snippet.
  /// [zoneId] The unique ID of the zone.
  const GetSnippetsArgs({
    required this.snippetName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snippetName': snippetName,
      'zoneId': zoneId,
    };
  }

  factory GetSnippetsArgs.fromMap(Map<String, dynamic> map) {
    return GetSnippetsArgs(
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
