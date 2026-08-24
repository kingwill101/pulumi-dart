// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_file.dart';
import 'snippet_metadata.dart';

/// {@template pulumi_index_snippet_snippet_args_doc}
/// The set of arguments for Snippet.
/// {@endtemplate}
/// {@macro pulumi_index_snippet_snippet_args_doc}
class SnippetArgs {
  /// The list of files belonging to the snippet.
  final pulumi.Input<List<SnippetFile>> files;
  /// Provide metadata about the snippet.
  final pulumi.Input<SnippetMetadata> metadata;
  /// Identify the snippet.
  final pulumi.Input<String> snippetName;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SnippetArgs].
  /// [files] The list of files belonging to the snippet.
  /// [metadata] Provide metadata about the snippet.
  /// [snippetName] Identify the snippet.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const SnippetArgs({
    required this.files,
    required this.metadata,
    required this.snippetName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<SnippetFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<SnippetFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': pulumi.Input.mapInputValue<SnippetMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'snippetName': snippetName,
      'zoneId': zoneId,
    };
  }

  factory SnippetArgs.fromMap(Map<String, dynamic> map) {
    return SnippetArgs(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<SnippetFile>(map['files']!, (value) => SnippetFile.fromMap((value as Map).cast<String, dynamic>()))),
      metadata: pulumi.Input.fromValue(SnippetMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      snippetName: pulumi.Input.fromValue(map['snippetName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
