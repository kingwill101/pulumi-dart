// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_logs_http_logs_azure_blob_storage.dart';
import 'linux_web_app_logs_http_logs_file_system.dart';

class LinuxWebAppLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined above.
  final pulumi.Input<LinuxWebAppLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `file_system` block as defined above.
  final pulumi.Input<LinuxWebAppLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [LinuxWebAppLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined above.
  /// [fileSystem] A `file_system` block as defined above.
  const LinuxWebAppLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogsHttpLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppLogsHttpLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppLogsHttpLogsFileSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

