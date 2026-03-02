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
    this.createTime,
    this.disabled,
    this.events,
    this.hookId,
    this.location,
    this.name,
    this.project,
    this.pushOption,
    this.repositoryId,
    this.sensitiveQueryString,
    this.targetUri,
    this.uid,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      events: map['events'] == null ? null : ((map['events']! as List).cast<String>()).input(),
      hookId: map['hookId'] == null ? null : (map['hookId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pushOption: map['pushOption'] == null ? null : (HookPushOption.fromMap((map['pushOption']! as Map).cast<String, dynamic>())).input(),
      repositoryId: map['repositoryId'] == null ? null : (map['repositoryId']! as String).input(),
      sensitiveQueryString: map['sensitiveQueryString'] == null ? null : (map['sensitiveQueryString']! as String).input(),
      targetUri: map['targetUri'] == null ? null : (map['targetUri']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

