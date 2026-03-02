// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message.dart';

/// {@template pulumi_ces_example_example_args_doc}
/// The set of arguments for Example.
/// {@endtemplate}
/// {@macro pulumi_ces_example_example_args_doc}
class ExampleArgs {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> app;
  /// Human-readable description of the example.
  final pulumi.Input<String>? description;
  /// Display name of the example.
  final pulumi.Input<String> displayName;
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String>? entryAgent;
  final pulumi.Input<String> exampleId;
  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<ExampleMessage>>? messages;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ExampleArgs].
  /// [app] Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [description] Human-readable description of the example.
  /// [displayName] Display name of the example.
  /// [entryAgent] The agent that initially handles the conversation. If not specified, the
  /// [exampleId] Required.
  /// [location] Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messages] The collection of messages that make up the conversation.
  /// [project] The ID of the project in which the resource belongs.
  ExampleArgs({
    required this.app,
    this.description,
    required this.displayName,
    this.entryAgent,
    required this.exampleId,
    required this.location,
    this.messages,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'description': ?description,
      'displayName': displayName,
      'entryAgent': ?entryAgent,
      'exampleId': exampleId,
      'location': location,
      'messages': ?pulumi.Input.mapOptionalInputValue<List<ExampleMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<ExampleMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory ExampleArgs.fromMap(Map<String, dynamic> map) {
    return ExampleArgs(
      app: (map['app'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      entryAgent: map['entryAgent'] == null ? null : (map['entryAgent']! as String).input(),
      exampleId: (map['exampleId'] as String).input(),
      location: (map['location'] as String).input(),
      messages: map['messages'] == null ? null : (pulumi.Input.decodeList<ExampleMessage>(map['messages']!, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

