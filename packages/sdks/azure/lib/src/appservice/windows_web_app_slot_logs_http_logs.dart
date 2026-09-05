// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_logs_http_logs_azure_blob_storage.dart';
import 'windows_web_app_slot_logs_http_logs_file_system.dart';

class WindowsWebAppSlotLogsHttpLogs {
  /// A `azureBlobStorageHttp` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsHttpLogsAzureBlobStorage?>? azureBlobStorage;
  /// A `fileSystem` block as defined above.
  final pulumi.Input<WindowsWebAppSlotLogsHttpLogsFileSystem?>? fileSystem;

  /// Creates a new [WindowsWebAppSlotLogsHttpLogs].
  /// [azureBlobStorage] A `azureBlobStorageHttp` block as defined above.
  /// [fileSystem] A `fileSystem` block as defined above.
  const WindowsWebAppSlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppSlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogsHttpLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppSlotLogsHttpLogsFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
