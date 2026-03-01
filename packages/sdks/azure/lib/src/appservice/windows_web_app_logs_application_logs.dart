// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_logs_application_logs_azure_blob_storage.dart';

class WindowsWebAppLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final WindowsWebAppLogsApplicationLogsAzureBlobStorage? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final String fileSystemLevel;

  /// Creates a new [WindowsWebAppLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  WindowsWebAppLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory WindowsWebAppLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppLogsApplicationLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : WindowsWebAppLogsApplicationLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

