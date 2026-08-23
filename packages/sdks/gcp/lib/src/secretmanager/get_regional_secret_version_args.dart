// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secret_version_get_regional_secret_version_args_doc}
/// Arguments for getRegionalSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secret_version_get_regional_secret_version_args_doc}
class GetRegionalSecretVersionArgs {
  /// If set to 'true', the secret data is
  /// expected to be base64-encoded string.
  final pulumi.Input<bool>? isSecretDataBase64;
  /// Location of Secret Manager regional secret resource.
  /// It must be provided when the `secret` field provided consists of only the name of the regional secret.
  final pulumi.Input<String>? location;
  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The regional secret to get the secret version for.
  /// This can be either the reference of the regional secret as in `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}` or only the name of the regional secret as in `{{secret_id}}`. If only the name of the regional secret is provided, the location must also be provided.
  final pulumi.Input<String> secret;
  /// The version of the regional secret to get. If it
  /// is not provided, the latest version is retrieved.
  final pulumi.Input<String>? version;

  /// Creates a new [GetRegionalSecretVersionArgs].
  /// [isSecretDataBase64] If set to 'true', the secret data is
  /// [location] Location of Secret Manager regional secret resource.
  /// [project] The project to get the secret version for. If it
  /// [secret] The regional secret to get the secret version for.
  /// [version] The version of the regional secret to get. If it
  const GetRegionalSecretVersionArgs({
    this.isSecretDataBase64,
    this.location,
    this.project,
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': ?location,
      'project': ?project,
      'secret': secret,
      'version': ?version,
    };
  }

  factory GetRegionalSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionArgs(
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
