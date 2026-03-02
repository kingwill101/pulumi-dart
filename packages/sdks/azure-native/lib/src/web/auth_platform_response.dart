// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the platform of App Service Authentication/Authorization.
class AuthPlatformResponse {
  /// The path of the config file containing auth settings if they come from a file.
  /// If the path is relative, base will the site's root directory.
  final pulumi.Input<String>? configFilePath;
  /// <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  final pulumi.Input<bool>? enabled;
  /// The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  /// The setting in this value can control the behavior of certain features in the Authentication / Authorization module.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [AuthPlatformResponse].
  /// [configFilePath] The path of the config file containing auth settings if they come from a file.
  /// [enabled] <code>true</code> if the Authentication / Authorization feature is enabled for the current app; otherwise, <code>false</code>.
  /// [runtimeVersion] The RuntimeVersion of the Authentication / Authorization feature in use for the current app.
  AuthPlatformResponse({
    this.configFilePath,
    this.enabled,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFilePath': ?configFilePath,
      'enabled': ?enabled,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory AuthPlatformResponse.fromMap(Map<String, dynamic> map) {
    return AuthPlatformResponse(
      configFilePath: map['configFilePath'] == null ? null : (map['configFilePath'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
    );
  }
}

