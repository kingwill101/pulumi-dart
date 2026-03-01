// ignore_for_file: unused_element, unnecessary_cast

import 'app_service_logs_http_logs_azure_blob_storage.dart';
import 'app_service_logs_http_logs_file_system.dart';

class AppServiceLogsHttpLogs {
  /// An `azure_blob_storage` block as defined below.
  final AppServiceLogsHttpLogsAzureBlobStorage? azureBlobStorage;
  /// A `file_system` block as defined below.
  final AppServiceLogsHttpLogsFileSystem? fileSystem;

  /// Creates a new [AppServiceLogsHttpLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystem] A `file_system` block as defined below.
  AppServiceLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory AppServiceLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : AppServiceLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : AppServiceLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

