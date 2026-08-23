// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ospolicy_resource_file_gcs.dart';
import 'ospolicy_resource_file_remote.dart';

/// A remote or local file.
class OSPolicyResourceFile {
  /// Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  final pulumi.Input<bool>? allowInsecure;
  /// A Cloud Storage object.
  final pulumi.Input<OSPolicyResourceFileGcs>? gcs;
  /// A local path within the VM to use.
  final pulumi.Input<String>? localPath;
  /// A generic remote file.
  final pulumi.Input<OSPolicyResourceFileRemote>? remote;

  /// Creates a new [OSPolicyResourceFile].
  /// [allowInsecure] Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified.
  /// [gcs] A Cloud Storage object.
  /// [localPath] A local path within the VM to use.
  /// [remote] A generic remote file.
  const OSPolicyResourceFile({
    this.allowInsecure,
    this.gcs,
    this.localPath,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowInsecure': ?allowInsecure,
      'gcs': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileGcs, Map<String, dynamic>>(gcs, (value) => value.toMap()),
      'localPath': ?localPath,
      'remote': ?pulumi.Input.mapOptionalInputValue<OSPolicyResourceFileRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
    };
  }

  factory OSPolicyResourceFile.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceFile(
      allowInsecure: (() { final guardedValue = map['allowInsecure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gcs: (() { final guardedValue = map['gcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileGcs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OSPolicyResourceFileRemote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
