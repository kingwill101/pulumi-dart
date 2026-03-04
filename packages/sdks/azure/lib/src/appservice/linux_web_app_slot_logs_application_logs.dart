// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_logs_application_logs_azure_blob_storage.dart';

class LinuxWebAppSlotLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final pulumi.Input<LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage>?
  azureBlobStorage;

  /// Log level. Possible values include `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final pulumi.Input<String> fileSystemLevel;

  /// Creates a new [LinuxWebAppSlotLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  LinuxWebAppSlotLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage,
            Map<String, dynamic>
          >(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory LinuxWebAppSlotLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsApplicationLogs(
      azureBlobStorage: (() {
        final guardedValue = map['azureBlobStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppSlotLogsApplicationLogsAzureBlobStorage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fileSystemLevel: pulumi.Input.fromValue(map['fileSystemLevel'] as String),
    );
  }
}
