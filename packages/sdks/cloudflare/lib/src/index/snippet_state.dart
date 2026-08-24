// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippet_file.dart';
import 'snippet_metadata.dart';

/// Input properties used for looking up and filtering Snippet resources.
class SnippetState {
  /// Indicates when the snippet was created.
  final pulumi.Input<String?>? createdOn;
  /// The list of files belonging to the snippet.
  final pulumi.Input<List<SnippetFile>?>? files;
  /// Provide metadata about the snippet.
  final pulumi.Input<SnippetMetadata?>? metadata;
  /// Indicates when the snippet was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Identify the snippet.
  final pulumi.Input<String?>? snippetName;
  /// Use this field to specify the unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SnippetState].
  /// [createdOn] Indicates when the snippet was created.
  /// [files] The list of files belonging to the snippet.
  /// [metadata] Provide metadata about the snippet.
  /// [modifiedOn] Indicates when the snippet was last modified.
  /// [snippetName] Identify the snippet.
  /// [zoneId] Use this field to specify the unique ID of the zone.
  const SnippetState({
    this.createdOn,
    this.files,
    this.metadata,
    this.modifiedOn,
    this.snippetName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'files': ?pulumi.Input.mapOptionalInputValue<List<SnippetFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<SnippetFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?pulumi.Input.mapOptionalInputValue<SnippetMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'snippetName': ?snippetName,
      'zoneId': ?zoneId,
    };
  }

  factory SnippetState.fromMap(Map<String, dynamic> map) {
    return SnippetState(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SnippetFile>(guardedValue, (value) => SnippetFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnippetMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snippetName: (() { final guardedValue = map['snippetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
