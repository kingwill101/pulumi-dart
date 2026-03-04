// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a single version.
class SecretVersion {
  /// Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `/secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  final pulumi.Input<String>? path;

  /// Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  final pulumi.Input<String>? version;

  /// Creates a new [SecretVersion].
  /// [path] Relative path of the file under the mount path where the secret value for this version will be fetched and made available. For example, setting the mount_path as '/etc/secrets' and path as `/secret_foo` would mount the secret value file at `/etc/secrets/secret_foo`.
  /// [version] Version of the secret (version number or the string 'latest'). It is preferable to use `latest` version with secret volumes as secret value changes are reflected immediately.
  SecretVersion({this.path, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': ?path, 'version': ?version};
  }

  factory SecretVersion.fromMap(Map<String, dynamic> map) {
    return SecretVersion(
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
