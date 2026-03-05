// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_regional_secret_version_regional_secret_version_args_doc}
/// The set of arguments for RegionalSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_regional_secret_version_regional_secret_version_args_doc}
class RegionalSecretVersionArgs {
  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// The current state of the regional secret version.
  final pulumi.Input<bool>? enabled;
  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool>? isSecretDataBase64;
  /// Secret Manager regional secret resource.
  final pulumi.Input<String> secret;
  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> secretData;

  /// Creates a new [RegionalSecretVersionArgs].
  /// [deletionPolicy] The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// [enabled] The current state of the regional secret version.
  /// [isSecretDataBase64] If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  /// [secret] Secret Manager regional secret resource.
  /// [secretData] The secret data. Must be no larger than 64KiB.
  RegionalSecretVersionArgs({
    this.deletionPolicy,
    this.enabled,
    this.isSecretDataBase64,
    required this.secret,
    required this.secretData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'enabled': ?enabled,
      'isSecretDataBase64': ?isSecretDataBase64,
      'secret': secret,
      'secretData': secretData,
    };
  }

  factory RegionalSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalSecretVersionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      secretData: pulumi.Input.fromValue(map['secretData'] as String),
    );
  }
}

