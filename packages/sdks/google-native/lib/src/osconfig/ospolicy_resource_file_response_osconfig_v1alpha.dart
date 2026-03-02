// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_gcs_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_remote_response_osconfig_v1alpha.dart';

/// A remote or local file.
class OSPolicyResourceFileResponseOsconfigV1alpha {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool> allowInsecure;
  /// A Cloud Storage object.
  final pulumi.Input<OSPolicyResourceFileGcsResponseOsconfigV1alpha> gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String> localPath;
  /// A generic remote file.
  final pulumi.Input<OSPolicyResourceFileRemoteResponseOsconfigV1alpha> remote;

  /// Creates a new [OSPolicyResourceFileResponseOsconfigV1alpha].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileResponseOsconfigV1alpha({
    required this.allowInsecure,
    required this.gcs,
    required this.localPath,
    required this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': allowInsecure,
      'gcs': pulumi.Input.mapInputValue<OSPolicyResourceFileGcsResponseOsconfigV1alpha, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': localPath,
      'remote': pulumi.Input.mapInputValue<OSPolicyResourceFileRemoteResponseOsconfigV1alpha, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceFileResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResponseOsconfigV1alpha(
      allowInsecure: (map['allowInsecure'] as bool).input(),
      gcs: (OSPolicyResourceFileGcsResponseOsconfigV1alpha.fromMap((map['gcs'] as Map).cast<String, dynamic>())).input(),
      localPath: (map['localPath'] as String).input(),
      remote: (OSPolicyResourceFileRemoteResponseOsconfigV1alpha.fromMap((map['remote'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

