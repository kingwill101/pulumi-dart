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
  const AppVersionSnapshotExample({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryAgent: (() { final guardedValue = map['entryAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invalid: (() { final guardedValue = map['invalid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotExampleMessage>(guardedValue, (value) => AppVersionSnapshotExampleMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

