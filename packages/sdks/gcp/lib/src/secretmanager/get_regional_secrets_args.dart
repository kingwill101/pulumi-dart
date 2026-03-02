// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secrets_get_regional_secrets_args_doc}
/// Arguments for getRegionalSecrets.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secrets_get_regional_secrets_args_doc}
class GetRegionalSecretsArgs {
  /// Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all regional secrets are listed from the specified location.
  final pulumi.Input<String>? filter;
  /// The location of the regional secret.
  final pulumi.Input<String> location;
  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalSecretsArgs].
  /// [filter] Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all regional secrets are listed from the specified location.
  /// [location] The location of the regional secret.
  /// [project] The ID of the project.
  GetRegionalSecretsArgs({
    this.filter,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'project': ?project,
    };
  }

  factory GetRegionalSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsArgs(
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

