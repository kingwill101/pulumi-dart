// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_logs_application_logs_azure_blob_storage.dart';

class WindowsWebAppLogsApplicationLogs {
  /// An `azure_blob_storage` block as defined below.
  final pulumi.Input<WindowsWebAppLogsApplicationLogsAzureBlobStorage>? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final pulumi.Input<String> fileSystemLevel;

  /// Creates a new [WindowsWebAppLogsApplicationLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  WindowsWebAppLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogsApplicationLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory WindowsWebAppLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppLogsApplicationLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppLogsApplicationLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLevel: pulumi.Input.fromValue(map['fileSystemLevel'] as String),
    );
  }
}

