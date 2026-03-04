// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secrets_get_secrets_args_doc}
/// Arguments for getSecrets.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secrets_get_secrets_args_doc}
class GetSecretsArgs {
  /// Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all secrets are listed.
  final pulumi.Input<String>? filter;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSecretsArgs].
  /// [filter] Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/docs/filtering). List only secrets matching the filter. If filter is empty, all secrets are listed.
  /// [project] The ID of the project.
  GetSecretsArgs({this.filter, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': ?filter, 'project': ?project};
  }

  factory GetSecretsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsArgs(
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
