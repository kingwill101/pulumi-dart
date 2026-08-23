// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hook_push_option.dart';

/// {@template pulumi_securesourcemanager_hook_hook_args_doc}
/// The set of arguments for Hook.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_hook_hook_args_doc}
class HookArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Determines if the hook disabled or not.
  /// [events] The events that trigger hook on.
  /// [hookId] The ID for the Hook.
  /// [location] The location for the Repository.
  /// [project] The ID of the project in which the resource belongs.
  /// [pushOption] The trigger option for push events.
  /// [repositoryId] The ID for the Repository.
  /// [sensitiveQueryString] The sensitive query string to be appended to the target URI.
  /// [targetUri] The target URI to which the payloads will be delivered.
  const HookArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      hookId: pulumi.Input.fromValue(map['hookId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pushOption: (() { final guardedValue = map['pushOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HookPushOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      sensitiveQueryString: (() { final guardedValue = map['sensitiveQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
