// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippets_metadata.dart';

/// Input properties used for looking up and filtering Snippets resources.
class SnippetsState {
  /// The timestamp of when the snippet was created.
  final pulumi.Input<String?>? createdOn;
  /// The list of files belonging to the snippet.
  final pulumi.Input<List<String>?>? files;
  /// Metadata about the snippet.
  final pulumi.Input<SnippetsMetadata?>? metadata;
  /// The timestamp of when the snippet was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The identifying name of the snippet.
  final pulumi.Input<String?>? snippetName;
  /// The unique ID of the zone.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SnippetsState].
  /// [createdOn] The timestamp of when the snippet was created.
  /// [files] The list of files belonging to the snippet.
  /// [metadata] Metadata about the snippet.
  /// [modifiedOn] The timestamp of when the snippet was last modified.
  /// [snippetName] The identifying name of the snippet.
  /// [zoneId] The unique ID of the zone.
  const SnippetsState({
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
      'files': ?files,
      'metadata': ?pulumi.Input.mapOptionalInputValue<SnippetsMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'snippetName': ?snippetName,
      'zoneId': ?zoneId,
    };
  }

  factory SnippetsState.fromMap(Map<String, dynamic> map) {
    return SnippetsState(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnippetsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snippetName: (() { final guardedValue = map['snippetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
