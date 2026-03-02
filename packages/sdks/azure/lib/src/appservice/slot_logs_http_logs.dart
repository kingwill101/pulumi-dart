// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_logs_http_logs_azure_blob_storage.dart';
import 'slot_logs_http_logs_file_system.dart';

class SlotLogsHttpLogs {
  /// An `azure_blob_storage` block as defined below.
  final pulumi.Input<SlotLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `file_system` block as defined below.
  final pulumi.Input<SlotLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [SlotLogsHttpLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystem] A `file_system` block as defined below.
  SlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<SlotLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<SlotLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory SlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return SlotLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (SlotLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage']! as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (SlotLogsHttpLogsFileSystem.fromMap((map['fileSystem']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

