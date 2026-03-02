// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_example_message.dart';

class AppVersionSnapshotExample {
  /// (Output)
  /// Timestamp when the toolset was created.
  final pulumi.Input<String>? createTime;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// The display name of the app version.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? entryAgent;
  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  /// (Output)
  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  final pulumi.Input<bool>? invalid;
  /// (Output)
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotExampleMessage>>? messages;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// Timestamp when the toolset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AppVersionSnapshotExample].
  /// [createTime] (Output)
  /// [description] The description of the app version.
  /// [displayName] The display name of the app version.
  /// [entryAgent] (Output)
  /// [etag] (Output)
  /// [invalid] (Output)
  /// [messages] (Output)
  /// [name] (Output)
  /// [updateTime] (Output)
  AppVersionSnapshotExample({
    this.createTime,
    this.description,
    this.displayName,
    this.entryAgent,
    this.etag,
    this.invalid,
    this.messages,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'entryAgent': ?entryAgent,
      'etag': ?etag,
      'invalid': ?invalid,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotExampleMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<AppVersionSnapshotExampleMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory AppVersionSnapshotExample.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExample(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      entryAgent: map['entryAgent'] == null ? null : (map['entryAgent'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      invalid: map['invalid'] == null ? null : (map['invalid'] as bool).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotExampleMessage>(map['messages'], (value) => AppVersionSnapshotExampleMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

