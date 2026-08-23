// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_stacks_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_api_stacks_config_args_doc}
class ConfigArgs {
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  final pulumi.Input<String>? encryptedKey;
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  final pulumi.Input<String>? encryptionSalt;
  /// Reference to ESC environment to use as stack configuration.
  final pulumi.Input<String> environment;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The project name
  final pulumi.Input<String> projectName;
  /// Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  final pulumi.Input<String>? secretsProvider;
  /// The stack name
  final pulumi.Input<String> stackName;

  /// Creates a new [ConfigArgs].
  /// [encryptedKey] Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  /// [encryptionSalt] Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  /// [environment] Reference to ESC environment to use as stack configuration.
  /// [orgName] The organization name
  /// [projectName] The project name
  /// [secretsProvider] Deprecated: this field is no longer used by the service. Stacks that use a service-backed configuration store all config (including secrets) in ESC, which uses its own encryption. New callers should omit this field.
  /// [stackName] The stack name
  const ConfigArgs({
    this.encryptedKey,
    this.encryptionSalt,
    required this.environment,
    required this.orgName,
    required this.projectName,
    this.secretsProvider,
    required this.stackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedKey': ?encryptedKey,
      'encryptionSalt': ?encryptionSalt,
      'environment': environment,
      'orgName': orgName,
      'projectName': projectName,
      'secretsProvider': ?secretsProvider,
      'stackName': stackName,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      encryptedKey: (() { final guardedValue = map['encryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSalt: (() { final guardedValue = map['encryptionSalt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      secretsProvider: (() { final guardedValue = map['secretsProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackName: pulumi.Input.fromValue(map['stackName'] as String),
    );
  }
}
