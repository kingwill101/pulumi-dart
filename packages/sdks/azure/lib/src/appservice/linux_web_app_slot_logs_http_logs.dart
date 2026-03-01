// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_logs_http_logs_azure_blob_storage.dart';
import 'linux_web_app_slot_logs_http_logs_file_system.dart';

class LinuxWebAppSlotLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined above.
  final LinuxWebAppSlotLogsHttpLogsAzureBlobStorage? azureBlobStorage;
  /// A `file_system` block as defined above.
  final LinuxWebAppSlotLogsHttpLogsFileSystem? fileSystem;

  /// Creates a new [LinuxWebAppSlotLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined above.
  /// [fileSystem] A `file_system` block as defined above.
  LinuxWebAppSlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory LinuxWebAppSlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : LinuxWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : LinuxWebAppSlotLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

