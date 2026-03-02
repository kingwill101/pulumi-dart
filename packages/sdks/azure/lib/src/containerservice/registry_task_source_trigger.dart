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
      'authentication': ?pulumi.Input.mapOptionalInputValue<RegistryTaskSourceTriggerAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
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
      authentication: map['authentication'] == null ? null : (RegistryTaskSourceTriggerAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      events: ((map['events'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      repositoryUrl: (map['repositoryUrl'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

