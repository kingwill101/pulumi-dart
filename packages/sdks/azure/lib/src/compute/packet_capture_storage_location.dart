// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PacketCaptureStorageLocation {
  /// A valid local path on the target Virtual Machine. Must include the name of the capture file (*.cap). For Linux Virtual Machines it must start with `/var/captures`.
  final pulumi.Input<String>? filePath;
  /// The ID of the storage account where the packet capture sessions should be saved to.
  ///
  /// &gt; **Note:** At least one of `file_path` or `storage_account_id` must be specified.
  final pulumi.Input<String>? storageAccountId;
  /// The URI of the storage path where the packet capture sessions are saved to.
  final pulumi.Input<String>? storagePath;

  /// Creates a new [PacketCaptureStorageLocation].
  /// [filePath] A valid local path on the target Virtual Machine. Must include the name of the capture file (*.cap). For Linux Virtual Machines it must start with `/var/captures`.
  /// [storageAccountId] The ID of the storage account where the packet capture sessions should be saved to.
  /// [storagePath] The URI of the storage path where the packet capture sessions are saved to.
  const PacketCaptureStorageLocation({
    this.filePath,
    this.storageAccountId,
    this.storagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'storageAccountId': ?storageAccountId,
      'storagePath': ?storagePath,
    };
  }

  factory PacketCaptureStorageLocation.fromMap(Map<String, dynamic> map) {
    return PacketCaptureStorageLocation(
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePath: (() { final guardedValue = map['storagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

