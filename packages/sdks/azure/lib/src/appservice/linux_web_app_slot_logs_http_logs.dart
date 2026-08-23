// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_logs_http_logs_azure_blob_storage.dart';
import 'linux_web_app_slot_logs_http_logs_file_system.dart';

class LinuxWebAppSlotLogsHttpLogs {
  /// A `azureBlobStorageHttp` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `fileSystem` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [LinuxWebAppSlotLogsHttpLogs].
  /// [azureBlobStorage] A `azureBlobStorageHttp` block as defined above.
  /// [fileSystem] A `fileSystem` block as defined above.
  const LinuxWebAppSlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsHttpLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppSlotLogsHttpLogsFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
