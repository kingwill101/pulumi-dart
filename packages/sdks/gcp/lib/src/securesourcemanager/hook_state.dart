// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hook_push_option.dart';

/// Input properties used for looking up and filtering Hook resources.
class HookState {
  /// Create timestamp.
  final pulumi.Input<String>? createTime;
  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  final pulumi.Input<bool>? disabled;
  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`.
  final pulumi.Input<List<String>>? events;
  /// The ID for the Hook.
  final pulumi.Input<String>? hookId;
  /// The location for the Repository.
  final pulumi.Input<String>? location;
  /// A unique identifier for a Hook. The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The trigger option for push events.
  /// Structure is documented below.
  final pulumi.Input<HookPushOption>? pushOption;
  /// The ID for the Repository.
  final pulumi.Input<String>? repositoryId;
  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? sensitiveQueryString;
  /// The target URI to which the payloads will be delivered.
  final pulumi.Input<String>? targetUri;
  /// Unique identifier of the hook.
  final pulumi.Input<String>? uid;
  /// Update timestamp.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [HookState].
  /// [createTime] Create timestamp.
  /// [disabled] Determines if the hook disabled or not.
  /// [events] The events that trigger hook on.
  /// [hookId] The ID for the Hook.
  /// [location] The location for the Repository.
  /// [name] A unique identifier for a Hook. The name should be of the format:
  /// [project] The ID of the project in which the resource belongs.
  /// [pushOption] The trigger option for push events.
  /// [repositoryId] The ID for the Repository.
  /// [sensitiveQueryString] The sensitive query string to be appended to the target URI.
  /// [targetUri] The target URI to which the payloads will be delivered.
  /// [uid] Unique identifier of the hook.
  /// [updateTime] Update timestamp.
  HookState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<List<String>>? events,
    pulumi.Output<String>? hookId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<HookPushOption>? pushOption,
    pulumi.Output<String>? repositoryId,
    pulumi.Output<String>? sensitiveQueryString,
    pulumi.Output<String>? targetUri,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      events = pulumi.Input.asOptionalInput<List<String>>(events),
      hookId = pulumi.Input.asOptionalInput<String>(hookId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pushOption = pulumi.Input.asOptionalInput<HookPushOption>(pushOption),
      repositoryId = pulumi.Input.asOptionalInput<String>(repositoryId),
      sensitiveQueryString = pulumi.Input.asOptionalInput<String>(sensitiveQueryString),
      targetUri = pulumi.Input.asOptionalInput<String>(targetUri),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disabled': ?disabled,
      'events': ?events,
      'hookId': ?hookId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pushOption': ?pulumi.Input.mapOptionalInputValue<HookPushOption, Map<String, dynamic>>(pushOption, (value) => value.toMap()),
      'repositoryId': ?repositoryId,
      'sensitiveQueryString': ?sensitiveQueryString,
      'targetUri': ?targetUri,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory HookState.fromMap(Map<String, dynamic> map) {
    return HookState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      events: map['events'] == null ? null : pulumi.Output.create<List<String>>((map['events'] as List).cast<String>()),
      hookId: map['hookId'] == null ? null : pulumi.Output.create<String>(map['hookId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pushOption: map['pushOption'] == null ? null : pulumi.Output.create<HookPushOption>(HookPushOption.fromMap((map['pushOption'] as Map).cast<String, dynamic>())),
      repositoryId: map['repositoryId'] == null ? null : pulumi.Output.create<String>(map['repositoryId'] as String),
      sensitiveQueryString: map['sensitiveQueryString'] == null ? null : pulumi.Output.create<String>(map['sensitiveQueryString'] as String),
      targetUri: map['targetUri'] == null ? null : pulumi.Output.create<String>(map['targetUri'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

