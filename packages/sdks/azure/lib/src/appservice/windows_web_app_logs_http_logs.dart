// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_logs_http_logs_azure_blob_storage.dart';
import 'windows_web_app_logs_http_logs_file_system.dart';

class WindowsWebAppLogsHttpLogs {
  /// A `azureBlobStorageHttp` block as defined below.
  final pulumi.Input<WindowsWebAppLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `fileSystem` block as defined above.
  final pulumi.Input<WindowsWebAppLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [WindowsWebAppLogsHttpLogs].
  /// [azureBlobStorage] A `azureBlobStorageHttp` block as defined below.
  /// [fileSystem] A `fileSystem` block as defined above.
  const WindowsWebAppLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory WindowsWebAppLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppLogsHttpLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppLogsHttpLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsWebAppLogsHttpLogsFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
