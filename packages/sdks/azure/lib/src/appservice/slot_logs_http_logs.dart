// ignore_for_file: unused_element, unnecessary_cast

import 'slot_logs_http_logs_azure_blob_storage.dart';
import 'slot_logs_http_logs_file_system.dart';

class SlotLogsHttpLogs {
  /// An `azure_blob_storage` block as defined below.
  final SlotLogsHttpLogsAzureBlobStorage? azureBlobStorage;
  /// A `file_system` block as defined below.
  final SlotLogsHttpLogsFileSystem? fileSystem;

  /// Creates a new [SlotLogsHttpLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystem] A `file_system` block as defined below.
  SlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory SlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return SlotLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : SlotLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : SlotLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

