// ignore_for_file: unused_element, unnecessary_cast

import 'registry_task_source_trigger_authentication.dart';

class RegistryTaskSourceTrigger {
  /// A `authentication` block as defined above.
  final RegistryTaskSourceTriggerAuthentication? authentication;
  /// The branch name of the source code.
  final String? branch;
  /// Should the trigger be enabled? Defaults to `true`.
  final bool? enabled;
  /// Specifies a list of source events corresponding to the trigger. Possible values are `commit` and `pullrequest`.
  final List<String> events;
  /// The name which should be used for this trigger.
  final String name;
  /// The full URL to the source code repository.
  final String repositoryUrl;
  /// The type of the source control service. Possible values are `Github` and `VisualStudioTeamService`.
  final String sourceType;

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
      'authentication': ?authentication == null ? null : authentication!.toMap(),
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
      authentication: map['authentication'] == null ? null : RegistryTaskSourceTriggerAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      branch: map['branch'] == null ? null : map['branch'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      events: (map['events'] as List).cast<String>(),
      name: map['name'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

