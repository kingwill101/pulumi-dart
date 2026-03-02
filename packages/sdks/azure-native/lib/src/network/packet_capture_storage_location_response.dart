// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage location for a packet capture session.
class PacketCaptureStorageLocationResponse {
  /// This path is invalid if 'Continuous Capture' is provided with 'true' or 'false'. A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For linux virtual machine it must start with /var/captures. Required if no storage ID is provided, otherwise optional.
  final pulumi.Input<String>? filePath;
  /// This path is valid if 'Continuous Capture' is provided with 'true' or 'false' and required if no storage ID is provided, otherwise optional. Must include the name of the capture file (*.cap). For linux virtual machine it must start with /var/captures.
  final pulumi.Input<String>? localPath;
  /// The ID of the storage account to save the packet capture session. Required if no localPath or filePath is provided.
  final pulumi.Input<String>? storageId;
  /// The URI of the storage path to save the packet capture. Must be a well-formed URI describing the location to save the packet capture.
  final pulumi.Input<String>? storagePath;

  /// Creates a new [PacketCaptureStorageLocationResponse].
  /// [filePath] This path is invalid if 'Continuous Capture' is provided with 'true' or 'false'. A valid local path on the targeting VM. Must include the name of the capture file (*.cap). For linux virtual machine it must start with /var/captures. Required if no storage ID is provided, otherwise optional.
  /// [localPath] This path is valid if 'Continuous Capture' is provided with 'true' or 'false' and required if no storage ID is provided, otherwise optional. Must include the name of the capture file (*.cap). For linux virtual machine it must start with /var/captures.
  /// [storageId] The ID of the storage account to save the packet capture session. Required if no localPath or filePath is provided.
  /// [storagePath] The URI of the storage path to save the packet capture. Must be a well-formed URI describing the location to save the packet capture.
  PacketCaptureStorageLocationResponse({
    this.filePath,
    this.localPath,
    this.storageId,
    this.storagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'localPath': ?localPath,
      'storageId': ?storageId,
      'storagePath': ?storagePath,
    };
  }

  factory PacketCaptureStorageLocationResponse.fromMap(Map<String, dynamic> map) {
    return PacketCaptureStorageLocationResponse(
      filePath: map['filePath'] == null ? null : (map['filePath'] as String).input(),
      localPath: map['localPath'] == null ? null : (map['localPath'] as String).input(),
      storageId: map['storageId'] == null ? null : (map['storageId'] as String).input(),
      storagePath: map['storagePath'] == null ? null : (map['storagePath'] as String).input(),
    );
  }
}

