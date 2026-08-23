// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_service_config_secret_volume_version.dart';

class FunctionServiceConfigSecretVolume {
  /// The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  final pulumi.Input<String> mountPath;
  /// Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  final pulumi.Input<String> projectId;
  /// Name of the secret in secret manager (not the full resource name).
  final pulumi.Input<String> secret;
  /// List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.'
  /// Structure is documented below.
  final pulumi.Input<List<FunctionServiceConfigSecretVolumeVersion>>? versions;

  /// Creates a new [FunctionServiceConfigSecretVolume].
  /// [mountPath] The path within the container to mount the secret volume. For example, setting the mountPath as /etc/secrets would mount the secret value files under the /etc/secrets directory. This directory will also be completely shadowed and unavailable to mount any other secrets. Recommended mount path: /etc/secrets
  /// [projectId] Project identifier (preferably project number but can also be the project ID) of the project that contains the secret. If not set, it will be populated with the function's project assuming that the secret exists in the same project as of the function.
  /// [secret] Name of the secret in secret manager (not the full resource name).
  /// [versions] List of secret versions to mount for this secret. If empty, the latest version of the secret will be made available in a file named after the secret under the mount point.'
  const FunctionServiceConfigSecretVolume({
    required this.mountPath,
    required this.projectId,
    required this.secret,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': mountPath,
      'projectId': projectId,
      'secret': secret,
      'versions': ?pulumi.Input.mapOptionalInputValue<List<FunctionServiceConfigSecretVolumeVersion>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<FunctionServiceConfigSecretVolumeVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FunctionServiceConfigSecretVolume.fromMap(Map<String, dynamic> map) {
    return FunctionServiceConfigSecretVolume(
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FunctionServiceConfigSecretVolumeVersion>(guardedValue, (value) => FunctionServiceConfigSecretVolumeVersion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
