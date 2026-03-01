// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secret_version_access_get_secret_version_access_args_doc}
/// Arguments for getSecretVersionAccess.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secret_version_access_get_secret_version_access_args_doc}
class GetSecretVersionAccessArgs {
  /// If set to 'true', the secret data is
  /// expected to be base64-encoded string.
  final pulumi.Input<bool>? isSecretDataBase64;
  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The secret to get the secret version for.
  final pulumi.Input<String> secret;
  /// The version of the secret to get. If it
  /// is not provided, the latest version is retrieved.
  final pulumi.Input<String>? version;

  /// Creates a new [GetSecretVersionAccessArgs].
  /// [isSecretDataBase64] If set to 'true', the secret data is
  /// [project] The project to get the secret version for. If it
  /// [secret] The secret to get the secret version for.
  /// [version] The version of the secret to get. If it
  GetSecretVersionAccessArgs({
    pulumi.Output<bool>? isSecretDataBase64,
    pulumi.Output<String>? project,
    required pulumi.Output<String> secret,
    pulumi.Output<String>? version,
  }) :
      isSecretDataBase64 = pulumi.Input.asOptionalInput<bool>(isSecretDataBase64),
      project = pulumi.Input.asOptionalInput<String>(project),
      secret = pulumi.Input.asInput<String>(secret),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecretDataBase64': ?isSecretDataBase64,
      'project': ?project,
      'secret': secret,
      'version': ?version,
    };
  }

  factory GetSecretVersionAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionAccessArgs(
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : pulumi.Output.create<bool>(map['isSecretDataBase64'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      secret: pulumi.Output.create<String>(map['secret'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

