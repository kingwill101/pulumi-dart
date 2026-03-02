// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_logs_http_logs_azure_blob_storage.dart';
import 'linux_web_app_slot_logs_http_logs_file_system.dart';

class LinuxWebAppSlotLogsHttpLogs {
  /// A `azure_blob_storage_http` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `file_system` block as defined above.
  final pulumi.Input<LinuxWebAppSlotLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [LinuxWebAppSlotLogsHttpLogs].
  /// [azureBlobStorage] A `azure_blob_storage_http` block as defined above.
  /// [fileSystem] A `file_system` block as defined above.
  LinuxWebAppSlotLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory LinuxWebAppSlotLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (LinuxWebAppSlotLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage']! as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (LinuxWebAppSlotLogsHttpLogsFileSystem.fromMap((map['fileSystem']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

