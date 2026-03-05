// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_gcs_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_remote_osconfig_v1alpha.dart';

/// A remote or local file.
class OSPolicyResourceFileOsconfigV1alpha {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// A Cloud Storage object.
  final pulumi.Input<OSPolicyResourceFileGcsOsconfigV1alpha>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// A generic remote file.
  final pulumi.Input<OSPolicyResourceFileRemoteOsconfigV1alpha>? remote;

  /// Creates a new [OSPolicyResourceFileOsconfigV1alpha].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileOsconfigV1alpha({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileGcsOsconfigV1alpha, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileRemoteOsconfigV1alpha, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceFileOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileOsconfigV1alpha(
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileGcsOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileRemoteOsconfigV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

