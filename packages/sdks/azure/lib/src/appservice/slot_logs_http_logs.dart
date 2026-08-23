// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_logs_http_logs_azure_blob_storage.dart';
import 'slot_logs_http_logs_file_system.dart';

class SlotLogsHttpLogs {
  /// An `azureBlobStorage` block as defined below.
  final pulumi.Input<SlotLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `fileSystem` block as defined below.
  final pulumi.Input<SlotLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [SlotLogsHttpLogs].
  /// [azureBlobStorage] An `azureBlobStorage` block as defined below.
  /// [fileSystem] A `fileSystem` block as defined below.
  const SlotLogsHttpLogs({
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
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotLogsHttpLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotLogsHttpLogsFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
