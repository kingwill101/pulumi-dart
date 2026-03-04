// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_source_trigger_authentication.dart';

class RegistryTaskSourceTrigger {
  /// A `authentication` block as defined above.
  final pulumi.Input<RegistryTaskSourceTriggerAuthentication>? authentication;

  /// The branch name of the source code.
  final pulumi.Input<String>? branch;

  /// Should the trigger be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Specifies a list of source events corresponding to the trigger. Possible values are `commit` and `pullrequest`.
  final pulumi.Input<List<String>> events;

  /// The name which should be used for this trigger.
  final pulumi.Input<String> name;

  /// The full URL to the source code repository.
  final pulumi.Input<String> repositoryUrl;

  /// The type of the source control service. Possible values are `Github` and `VisualStudioTeamService`.
  final pulumi.Input<String> sourceType;

  /// Creates a new [RegistryTaskSourceTrigger].
  /// [authentication] A `authentication` block as defined above.
  /// [branch] The branch name of the source code.
  /// [enabled] Should the trigger be enabled? Defaults to `true`.
  /// [events] Specifies a list of source events corresponding to the trigger. Possible values are `commit` and `pullrequest`.
  /// [name] The name which should be used for this trigger.
  /// [repositoryUrl] The full URL to the source code repository.
  /// [sourceType] The type of the source control service. Possible values are `Github` and `VisualStudioTeamService`.
  RegistryTaskSourceTrigger({
    this.authentication,
    this.branch,
    this.enabled,
    required this.events,
    required this.name,
    required this.repositoryUrl,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            RegistryTaskSourceTriggerAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'branch': ?branch,
      'enabled': ?enabled,
      'events': events,
      'name': name,
      'repositoryUrl': repositoryUrl,
      'sourceType': sourceType,
    };
  }

  factory RegistryTaskSourceTrigger.fromMap(Map<String, dynamic> map) {
    return RegistryTaskSourceTrigger(
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RegistryTaskSourceTriggerAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      branch: (() {
        final guardedValue = map['branch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      events: pulumi.Input.fromValue((map['events'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
