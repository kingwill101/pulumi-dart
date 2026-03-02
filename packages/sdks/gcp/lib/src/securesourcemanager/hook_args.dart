// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hook_push_option.dart';

/// {@template pulumi_securesourcemanager_hook_hook_args_doc}
/// The set of arguments for Hook.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_hook_hook_args_doc}
class HookArgs {
  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  final pulumi.Input<bool>? disabled;
  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`.
  final pulumi.Input<List<String>>? events;
  /// The ID for the Hook.
  final pulumi.Input<String> hookId;
  /// The location for the Repository.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The trigger option for push events.
  /// Structure is documented below.
  final pulumi.Input<HookPushOption>? pushOption;
  /// The ID for the Repository.
  final pulumi.Input<String> repositoryId;
  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? sensitiveQueryString;
  /// The target URI to which the payloads will be delivered.
  final pulumi.Input<String> targetUri;

  /// Creates a new [HookArgs].
  /// [disabled] Determines if the hook disabled or not.
  /// [events] The events that trigger hook on.
  /// [hookId] The ID for the Hook.
  /// [location] The location for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [pushOption] The trigger option for push events.
  /// [repositoryId] The ID for the Repository.
  /// [sensitiveQueryString] The sensitive query string to be appended to the target URI.
  /// [targetUri] The target URI to which the payloads will be delivered.
  HookArgs({
    this.disabled,
    this.events,
    required this.hookId,
    required this.location,
    this.project,
    this.pushOption,
    required this.repositoryId,
    this.sensitiveQueryString,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'events': ?events,
      'hookId': hookId,
      'location': location,
      'project': ?project,
      'pushOption': ?pulumi.Input.mapOptionalInputValue<HookPushOption, Map<String, dynamic>>(pushOption, (value) => value.toMap()),
      'repositoryId': repositoryId,
      'sensitiveQueryString': ?sensitiveQueryString,
      'targetUri': targetUri,
    };
  }

  factory HookArgs.fromMap(Map<String, dynamic> map) {
    return HookArgs(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      events: map['events'] == null ? null : ((map['events'] as List).cast<String>()).input(),
      hookId: (map['hookId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pushOption: map['pushOption'] == null ? null : (HookPushOption.fromMap((map['pushOption'] as Map).cast<String, dynamic>())).input(),
      repositoryId: (map['repositoryId'] as String).input(),
      sensitiveQueryString: map['sensitiveQueryString'] == null ? null : (map['sensitiveQueryString'] as String).input(),
      targetUri: (map['targetUri'] as String).input(),
    );
  }
}

