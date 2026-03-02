// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_logs_http_logs_azure_blob_storage.dart';
import 'windows_web_app_logs_http_logs_file_system.dart';

class WindowsWebAppLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined below.
  final pulumi.Input<WindowsWebAppLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `file_system` block as defined above.
  final pulumi.Input<WindowsWebAppLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [WindowsWebAppLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined below.
  /// [fileSystem] A `file_system` block as defined above.
  WindowsWebAppLogsHttpLogs({
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
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (WindowsWebAppLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (WindowsWebAppLogsHttpLogsFileSystem.fromMap((map['fileSystem'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

