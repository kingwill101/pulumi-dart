// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk.dart';

class AppVersionSnapshotExampleMessage {
  /// (Output)
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessageChunk>? chunks;
  /// (Output)
  /// The role within the conversation, e.g., user, agent.
  final String? role;

  /// Creates a new [AppVersionSnapshotExampleMessage].
  /// [chunks] (Output)
  /// [role] (Output)
  AppVersionSnapshotExampleMessage({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunks': ?chunks == null ? null : pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunk, Map<String, dynamic>>(chunks!, (value) => value.toMap()),
      'role': ?role,
    };
  }

  factory AppVersionSnapshotExampleMessage.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessage(
      chunks: map['chunks'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunk>(map['chunks'], (value) => AppVersionSnapshotExampleMessageChunk.fromMap((value as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

