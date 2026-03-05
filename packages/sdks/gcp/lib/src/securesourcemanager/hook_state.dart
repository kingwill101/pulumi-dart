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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hookId: (() { final guardedValue = map['hookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pushOption: (() { final guardedValue = map['pushOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HookPushOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitiveQueryString: (() { final guardedValue = map['sensitiveQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUri: (() { final guardedValue = map['targetUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

