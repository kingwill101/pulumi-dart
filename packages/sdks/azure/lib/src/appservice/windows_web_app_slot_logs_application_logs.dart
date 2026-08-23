// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_logs_application_logs_azure_blob_storage.dart';

class WindowsWebAppSlotLogsApplicationLogs {
  /// An `azureBlobStorage` block as defined below.
  final pulumi.Input<WindowsWebAppSlotLogsApplicationLogsAzureBlobStorage>? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final pulumi.Input<String> fileSystemLevel;

  /// Creates a new [WindowsWebAppSlotLogsApplicationLogs].
  /// [azureBlobStorage] An `azureBlobStorage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  const WindowsWebAppSlotLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogsApplicationLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory WindowsWebAppSlotLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsApplicationLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotLogsApplicationLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLevel: pulumi.Input.fromValue(map['fileSystemLevel'] as String),
    );
  }
}
