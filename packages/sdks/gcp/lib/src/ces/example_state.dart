// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message.dart';

/// Input properties used for looking up and filtering Example resources.
class ExampleState {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? app;
  /// Timestamp when the example was created.
  final pulumi.Input<String>? createTime;
  /// Human-readable description of the example.
  final pulumi.Input<String>? description;
  /// Display name of the example.
  final pulumi.Input<String>? displayName;
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? entryAgent;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? exampleId;
  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  final pulumi.Input<bool>? invalid;
  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<ExampleMessage>>? messages;
  /// Identifier. The unique identifier of the example.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp when the example was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ExampleState].
  /// [app] Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [createTime] Timestamp when the example was created.
  /// [description] Human-readable description of the example.
  /// [displayName] Display name of the example.
  /// [entryAgent] The agent that initially handles the conversation. If not specified, the
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write
  /// [exampleId] Optional.
  /// [invalid] The example may become invalid if referencing resources are deleted.
  /// [location] Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messages] The collection of messages that make up the conversation.
  /// [name] Identifier. The unique identifier of the example.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp when the example was last updated.
  ExampleState({
    this.app,
    this.createTime,
    this.description,
    this.displayName,
    this.entryAgent,
    this.etag,
    this.exampleId,
    this.invalid,
    this.location,
    this.messages,
    this.name,
    this.project,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'entryAgent': ?entryAgent,
      'etag': ?etag,
      'exampleId': ?exampleId,
      'invalid': ?invalid,
      'location': ?location,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<ExampleMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<ExampleMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory ExampleState.fromMap(Map<String, dynamic> map) {
    return ExampleState(
      app: map['app'] == null ? null : (map['app']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      entryAgent: map['entryAgent'] == null ? null : (map['entryAgent']! as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      exampleId: map['exampleId'] == null ? null : (map['exampleId']! as String).input(),
      invalid: map['invalid'] == null ? null : (map['invalid']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<ExampleMessage>(map['messages']!, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

