// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a single version.
class SecretVersionCloudfunctionsV2 {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final pulumi.Input<String>? path;

  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final pulumi.Input<String>? version;

  /// Creates a new [SecretVersionCloudfunctionsV2].
  /// [path] Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  /// [version] Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  SecretVersionCloudfunctionsV2({this.path, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path, 'version': ?version};
  }

  factory SecretVersionCloudfunctionsV2.fromMap(Map<String, dynamic> map) {
    return SecretVersionCloudfunctionsV2(
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
