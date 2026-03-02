// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_secret_volume_version.dart';

class GetFunctionSecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mount_path as "/etc/secrets" would mount the secret value files under the "/etc/secrets" directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: "/etc/secrets" Restricted mount paths: "/cloudsql", "/dev/log", "/pod", "/proc", "/var/log".
  final pulumi.Input<String> mountPath;
  /// Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  final pulumi.Input<String> projectId;
  /// ID of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// List of secret versions to mount for this secret. If empty, the "latest" version of the secret will be made available in a file named after the secret under the mount point.
  final pulumi.Input<List<GetFunctionSecretVolumeVersion>> versions;

  /// Creates a new [GetFunctionSecretVolume].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mount_path as "/etc/secrets" would mount the secret value files under the "/etc/secrets" directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount paths: "/etc/secrets" Restricted mount paths: "/cloudsql", "/dev/log", "/pod", "/proc", "/var/log".
  /// [projectId] Project identifier (due to a known limitation, only project number is supported by this field) of the project that contains the secret. If not set, it will be populated with the function's project, assuming that the secret exists in the same project as of the function.
  /// [secret] ID of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the "latest" version of the secret will be made available in a file named after the secret under the mount point.
  GetFunctionSecretVolume({
    required this.mountPath,
    required this.projectId,
    required this.secret,
    required this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'projectId': projectId,
      'secret': secret,
      'versions': pulumi.Input.mapInputValue<List<GetFunctionSecretVolumeVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<GetFunctionSecretVolumeVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFunctionSecretVolume.fromMap(Map<String, dynamic> map) {
    return GetFunctionSecretVolume(
      mountPath: (map['mountPath'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      secret: (map['secret'] as String).input(),
      versions: (pulumi.Input.decodeList<GetFunctionSecretVolumeVersion>(map['versions'], (value) => GetFunctionSecretVolumeVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

