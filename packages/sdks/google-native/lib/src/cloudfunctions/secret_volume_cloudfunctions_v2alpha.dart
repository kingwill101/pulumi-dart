// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_cloudfunctions_v2alpha.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container.
class SecretVolumeCloudfunctionsV2alpha {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final pulumi.Input<String>? mountPath;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final pulumi.Input<String>? project;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String>? secret;
  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final pulumi.Input<List<SecretVersionCloudfunctionsV2alpha>>? versions;

  /// Creates a new [SecretVolumeCloudfunctionsV2alpha].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  /// [project] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  SecretVolumeCloudfunctionsV2alpha({
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
      'versions': ?pulumi.Input.mapOptionalInputValue<List<SecretVersionCloudfunctionsV2alpha>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<SecretVersionCloudfunctionsV2alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecretVolumeCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SecretVolumeCloudfunctionsV2alpha(
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      secret: map['secret'] == null ? null : (map['secret']! as String).input(),
      versions: map['versions'] == null ? null : (pulumi.Input.decodeList<SecretVersionCloudfunctionsV2alpha>(map['versions']!, (value) => SecretVersionCloudfunctionsV2alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

