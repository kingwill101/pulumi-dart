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
    this.isSecretDataBase64,
    this.project,
    required this.secret,
    this.version,
  });

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
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : (map['isSecretDataBase64'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      secret: (map['secret'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

