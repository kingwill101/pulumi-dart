// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_gcs_response.dart';
import 'ospolicy_resource_file_remote_response.dart';

/// A remote or local file.
class OSPolicyResourceFileResponse {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool> allowInsecure;
  /// A Cloud Storage object.
  final pulumi.Input<OSPolicyResourceFileGcsResponse> gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String> localPath;
  /// A generic remote file.
  final pulumi.Input<OSPolicyResourceFileRemoteResponse> remote;

  /// Creates a new [OSPolicyResourceFileResponse].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  OSPolicyResourceFileResponse({
    required this.allowInsecure,
    required this.gcs,
    required this.localPath,
    required this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': allowInsecure,
      'gcs': pulumi.Input.mapInputValue<OSPolicyResourceFileGcsResponse, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': localPath,
      'remote': pulumi.Input.mapInputValue<OSPolicyResourceFileRemoteResponse, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceFileResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFileResponse(
      allowInsecure: pulumi.Input.fromValue(map['allowInsecure'] as bool),
      gcs: pulumi.Input.fromValue(OSPolicyResourceFileGcsResponse.fromMap((map['gcs']! as Map).cast<String, dynamic>())),
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      remote: pulumi.Input.fromValue(OSPolicyResourceFileRemoteResponse.fromMap((map['remote']! as Map).cast<String, dynamic>())),
    );
  }
}

