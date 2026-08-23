// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message_chunk.dart';

class AppVersionSnapshotExampleMessage {
  /// (Output)
  /// Content of the message as a series of chunks.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessageChunk>>? chunks;
  /// (Output)
  /// The role within the conversation, e.g., user, agent.
  final pulumi.Input<String>? role;

  /// Creates a new [AppVersionSnapshotExampleMessage].
  /// [chunks] (Output)
  /// [role] (Output)
  const AppVersionSnapshotExampleMessage({
    this.chunks,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunks': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessageChunk>, List<Map<String, dynamic>>>(chunks, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessageChunk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'role': ?role,
    };
  }

  factory AppVersionSnapshotExampleMessage.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExampleMessage(
      chunks: (() { final guardedValue = map['chunks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessageChunk>(guardedValue, (value) => AppVersionSnapshotExampleMessageChunk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
