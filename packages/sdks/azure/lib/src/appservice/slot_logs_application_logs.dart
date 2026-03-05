// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_logs_application_logs_azure_blob_storage.dart';

class SlotLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final pulumi.Input<SlotLogsApplicationLogsAzureBlobStorage>? azureBlobStorage;
  /// The file system log level. Possible values are `Off`, `Error`, `Warning`, `Information`, and `Verbose`. Defaults to `Off`.
  final pulumi.Input<String>? fileSystemLevel;

  /// Creates a new [SlotLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] The file system log level. Possible values are `Off`, `Error`, `Warning`, `Information`, and `Verbose`. Defaults to `Off`.
  SlotLogsApplicationLogs({
    this.azureBlobStorage,
    this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<SlotLogsApplicationLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': ?fileSystemLevel,
    };
  }

  factory SlotLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return SlotLogsApplicationLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotLogsApplicationLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLevel: (() { final guardedValue = map['fileSystemLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

