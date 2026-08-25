// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_message.dart';

/// Input properties used for looking up and filtering Example resources.
class ExampleState {
  /// Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? app;
  /// Timestamp when the example was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-readable description of the example.
  final pulumi.Input<String?>? description;
  /// Display name of the example.
  final pulumi.Input<String?>? displayName;
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final pulumi.Input<String?>? entryAgent;
  /// Etag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final pulumi.Input<String?>? etag;
  /// The ID to use for the example, which will become the final component of
  /// the example's resource name. In Terraform, this field is required.
  final pulumi.Input<String?>? exampleId;
  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  final pulumi.Input<bool?>? invalid;
  /// Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final pulumi.Input<List<ExampleMessage>?>? messages;
  /// Identifier. The unique identifier of the example.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/examples/{example}`
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Timestamp when the example was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ExampleState].
  /// [app] Resource ID segment making up resource `name`, defining the app the example belongs to. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [createTime] Timestamp when the example was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Human-readable description of the example.
  /// [displayName] Display name of the example.
  /// [entryAgent] The agent that initially handles the conversation. If not specified, the
  /// [etag] Etag used to ensure the object hasn't changed during a read-modify-write
  /// [exampleId] The ID to use for the example, which will become the final component of
  /// [invalid] The example may become invalid if referencing resources are deleted.
  /// [location] Resource ID segment making up resource `name`, defining what region the parent app is in. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [messages] The collection of messages that make up the conversation.
  /// [name] Identifier. The unique identifier of the example.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Timestamp when the example was last updated.
  const ExampleState({
    this.app,
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      app: (() { final guardedValue = map['app']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entryAgent: (() { final guardedValue = map['entryAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exampleId: (() { final guardedValue = map['exampleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invalid: (() { final guardedValue = map['invalid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messages: (() { final guardedValue = map['messages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExampleMessage>(guardedValue, (value) => ExampleMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
