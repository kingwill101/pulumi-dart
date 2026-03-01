// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_slot_logs_application_logs_azure_blob_storage.dart';

class LinuxWebAppSlotLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage? azureBlobStorage;
  /// Log level. Possible values include `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final String fileSystemLevel;

  /// Creates a new [LinuxWebAppSlotLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  LinuxWebAppSlotLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory LinuxWebAppSlotLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsApplicationLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

