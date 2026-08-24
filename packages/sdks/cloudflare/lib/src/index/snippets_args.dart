// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippets_metadata.dart';

/// {@template pulumi_index_snippets_snippets_args_doc}
/// The set of arguments for Snippets.
/// {@endtemplate}
/// {@macro pulumi_index_snippets_snippets_args_doc}
class SnippetsArgs {
  /// The list of files belonging to the snippet.
  final pulumi.Input<List<String>> files;
  /// Metadata about the snippet.
  final pulumi.Input<SnippetsMetadata> metadata;
  /// The identifying name of the snippet.
  final pulumi.Input<String> snippetName;
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SnippetsArgs].
  /// [files] The list of files belonging to the snippet.
  /// [metadata] Metadata about the snippet.
  /// [snippetName] The identifying name of the snippet.
  /// [zoneId] The unique ID of the zone.
  const SnippetsArgs({
    required this.files,
    required this.metadata,
    required this.snippetName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': files,
      'metadata': pulumi.Input.mapInputValue<SnippetsMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'snippetName': snippetName,
      'zoneId': zoneId,
    };
  }

  factory SnippetsArgs.fromMap(Map<String, dynamic> map) {
    return SnippetsArgs(
      files: pulumi.Input.fromValue((map['files'] as List).cast<String>()),
      metadata: pulumi.Input.fromValue(SnippetsMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
