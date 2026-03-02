// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secret_version_get_secret_version_args_doc}
/// Arguments for getSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secret_version_get_secret_version_args_doc}
class GetSecretVersionArgs {
  /// If set to `false`, the `secret_data`
  /// will not be fetched. Default is `true`.
  final pulumi.Input<bool>? fetchSecretData;
  /// If set to `true`, the secret data is
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

  /// Creates a new [GetSecretVersionArgs].
  /// [fetchSecretData] If set to `false`, the `secret_data`
  /// [isSecretDataBase64] If set to `true`, the secret data is
  /// [project] The project to get the secret version for. If it
  /// [secret] The secret to get the secret version for.
  /// [version] The version of the secret to get. If it
  GetSecretVersionArgs({
    this.fetchSecretData,
    this.isSecretDataBase64,
    this.project,
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fetchSecretData': ?fetchSecretData,
      'isSecretDataBase64': ?isSecretDataBase64,
      'project': ?project,
      'secret': secret,
      'version': ?version,
    };
  }

  factory GetSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionArgs(
      fetchSecretData: map['fetchSecretData'] == null ? null : (map['fetchSecretData'] as bool).input(),
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : (map['isSecretDataBase64'] as bool).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      secret: (map['secret'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

