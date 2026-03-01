// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_logs_http_logs_azure_blob_storage.dart';
import 'linux_web_app_logs_http_logs_file_system.dart';

class LinuxWebAppLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined above.
  final LinuxWebAppLogsHttpLogsAzureBlobStorage? azureBlobStorage;
  /// A `file_system` block as defined above.
  final LinuxWebAppLogsHttpLogsFileSystem? fileSystem;

  /// Creates a new [LinuxWebAppLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined above.
  /// [fileSystem] A `file_system` block as defined above.
  LinuxWebAppLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory LinuxWebAppLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : LinuxWebAppLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : LinuxWebAppLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

