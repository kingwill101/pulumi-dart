// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container. Secret value is not a part of the configuration. Every filesystem read operation performs a lookup in secret manager to retrieve the secret value.
class SecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
  final pulumi.Input<String>? mountPath;
  /// Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final pulumi.Input<String>? project;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String>? secret;
  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final pulumi.Input<List<SecretVersion>>? versions;

  /// Creates a new [SecretVolume].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: /etc/secrets Restricted mount paths: /cloudsql, /dev/log, /pod, /proc, /var/log
  /// [project] Project identifier (preferrably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  const SecretVolume({
    this.mountPath,
    this.project,
    this.secret,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'project': ?project,
      'secret': ?secret,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<SecretVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<SecretVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecretVolume.fromMap(Map<String, dynamic> map) {
    return SecretVolume(
      mountPath: (() { final guardedValue = map['mountPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecretVersion>(guardedValue, (value) => SecretVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
