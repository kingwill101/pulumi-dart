// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_snippet_get_snippet_args_doc}
/// Arguments for getSnippet.
/// {@endtemplate}
/// {@macro pulumi_index_get_snippet_get_snippet_args_doc}
class GetSnippetArgs {
  /// Identify the snippet.
  final pulumi.Input<String> snippetName;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSnippetArgs].
  /// [snippetName] Identify the snippet.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const GetSnippetArgs({
    required this.snippetName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snippetName': snippetName,
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetArgs.fromMap(Map<String, dynamic> map) {
    return GetSnippetArgs(
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
