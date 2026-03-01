// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_logs_application_logs_azure_blob_storage.dart';

class LinuxWebAppLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final LinuxWebAppLogsApplicationLogsAzureBlobStorage? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final String fileSystemLevel;

  /// Creates a new [LinuxWebAppLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  LinuxWebAppLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory LinuxWebAppLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogsApplicationLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : LinuxWebAppLogsApplicationLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

