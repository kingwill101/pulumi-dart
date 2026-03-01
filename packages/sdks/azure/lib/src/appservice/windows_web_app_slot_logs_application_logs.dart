// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_logs_application_logs_azure_blob_storage.dart';

class WindowsWebAppSlotLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final WindowsWebAppSlotLogsApplicationLogsAzureBlobStorage? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final String fileSystemLevel;

  /// Creates a new [WindowsWebAppSlotLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  WindowsWebAppSlotLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory WindowsWebAppSlotLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsApplicationLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : WindowsWebAppSlotLogsApplicationLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

