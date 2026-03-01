// ignore_for_file: unused_element, unnecessary_cast

import 'database_engine_info_response.dart';

/// Result data returned by getConversionWorkspace.
class GetConversionWorkspaceResult {
  /// The timestamp when the workspace resource was created.
  final String createTime;
  /// The destination engine details.
  final DatabaseEngineInfoResponse destination;
  /// Optional. The display name for the workspace.
  final String displayName;
  /// Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  final Map<String, String> globalSettings;
  /// Whether the workspace has uncommitted changes (changes which were made after the workspace was committed).
  final bool hasUncommittedChanges;
  /// The latest commit ID.
  final String latestCommitId;
  /// The timestamp when the workspace was committed.
  final String latestCommitTime;
  /// Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  final String name;
  /// The source engine details.
  final DatabaseEngineInfoResponse source;
  /// The timestamp when the workspace resource was last updated.
  final String updateTime;

  /// Creates a new [GetConversionWorkspaceResult].
  /// [createTime] The timestamp when the workspace resource was created.
  /// [destination] The destination engine details.
  /// [displayName] Optional. The display name for the workspace.
  /// [globalSettings] Optional. A generic list of settings for the workspace. The settings are database pair dependant and can indicate default behavior for the mapping rules engine or turn on or off specific features. Such examples can be: convert_foreign_key_to_interleave=true, skip_triggers=false, ignore_non_table_synonyms=true
  /// [hasUncommittedChanges] Whether the workspace has uncommitted changes (changes which were made after the workspace was committed).
  /// [latestCommitId] The latest commit ID.
  /// [latestCommitTime] The timestamp when the workspace was committed.
  /// [name] Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// [source] The source engine details.
  /// [updateTime] The timestamp when the workspace resource was last updated.
  GetConversionWorkspaceResult({
    required this.createTime,
    required this.destination,
    required this.displayName,
    required this.globalSettings,
    required this.hasUncommittedChanges,
    required this.latestCommitId,
    required this.latestCommitTime,
    required this.name,
    required this.source,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'destination': destination.toMap(),
      'displayName': displayName,
      'globalSettings': globalSettings,
      'hasUncommittedChanges': hasUncommittedChanges,
      'latestCommitId': latestCommitId,
      'latestCommitTime': latestCommitTime,
      'name': name,
      'source': source.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetConversionWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetConversionWorkspaceResult(
      createTime: map['createTime'] as String,
      destination: DatabaseEngineInfoResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      globalSettings: (map['globalSettings'] as Map).cast<String, String>(),
      hasUncommittedChanges: map['hasUncommittedChanges'] as bool,
      latestCommitId: map['latestCommitId'] as String,
      latestCommitTime: map['latestCommitTime'] as String,
      name: map['name'] as String,
      source: DatabaseEngineInfoResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}

