// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_logs_http_logs_azure_blob_storage.dart';
import 'windows_web_app_slot_logs_http_logs_file_system.dart';

class WindowsWebAppSlotLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined above.
  final WindowsWebAppSlotLogsHttpLogsAzureBlobStorage? azureBlobStorage;
  /// A `file_system` block as defined above.
  final WindowsWebAppSlotLogsHttpLogsFileSystem? fileSystem;

  /// Creates a new [WindowsWebAppSlotLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined above.
  /// [fileSystem] A `file_system` block as defined above.
  WindowsWebAppSlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory WindowsWebAppSlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : WindowsWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : WindowsWebAppSlotLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

