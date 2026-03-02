// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_response_cloudfunctions_v2alpha.dart';

/// Configuration for a secret volume. It has the information necessary to fetch the secret value from secret manager and make it available as files mounted at the requested paths within the application container.
class SecretVolumeResponseCloudfunctionsV2alpha {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final pulumi.Input<String> mountPath;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  final pulumi.Input<String> project;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  final pulumi.Input<List<SecretVersionResponseCloudfunctionsV2alpha>> versions;

  /// Creates a new [SecretVolumeResponseCloudfunctionsV2alpha].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as `/etc/secrets` would mount the secret value files under the `/etc/secrets` directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  /// [project] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it is assumed that the secret is in the same project as the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the `latest` version of the secret will be made available in a file named after the secret under the mount point.
  SecretVolumeResponseCloudfunctionsV2alpha({
    required this.mountPath,
    required this.project,
    required this.secret,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'project': project,
      'secret': secret,
      'versions': pulumi.Input.mapInputValue<List<SecretVersionResponseCloudfunctionsV2alpha>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<SecretVersionResponseCloudfunctionsV2alpha, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecretVolumeResponseCloudfunctionsV2alpha.fromMap(Map<String, dynamic> map) {
    return SecretVolumeResponseCloudfunctionsV2alpha(
      mountPath: (map['mountPath'] as String).input(),
      project: (map['project'] as String).input(),
      secret: (map['secret'] as String).input(),
      versions: (pulumi.Input.decodeList<SecretVersionResponseCloudfunctionsV2alpha>(map['versions'], (value) => SecretVersionResponseCloudfunctionsV2alpha.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

