// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secret_get_regional_secret_args_doc}
/// Arguments for getRegionalSecret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secret_get_regional_secret_args_doc}
class GetRegionalSecretArgs {
  /// The location of the regional secret. eg us-central1
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;
  /// The name of the regional secret.
  final pulumi.Input<String> secretId;

  /// Creates a new [GetRegionalSecretArgs].
  /// [location] The location of the regional secret. eg us-central1
  /// [project] The ID of the project in which the resource belongs.
  /// [secretId] The name of the regional secret.
  const GetRegionalSecretArgs({
    required this.location,
    this.project,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'secretId': secretId,
    };
  }

  factory GetRegionalSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
