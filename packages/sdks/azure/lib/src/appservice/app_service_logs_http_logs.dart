// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_logs_http_logs_azure_blob_storage.dart';
import 'app_service_logs_http_logs_file_system.dart';

class AppServiceLogsHttpLogs {
  /// An `azure_blob_storage` block as defined below.
  final pulumi.Input<AppServiceLogsHttpLogsAzureBlobStorage>? azureBlobStorage;
  /// A `file_system` block as defined below.
  final pulumi.Input<AppServiceLogsHttpLogsFileSystem>? fileSystem;

  /// Creates a new [AppServiceLogsHttpLogs].
  /// [azureBlobStorage] An `azure_blob_storage` block as defined below.
  /// [fileSystem] A `file_system` block as defined below.
  AppServiceLogsHttpLogs({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AppServiceLogsHttpLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<AppServiceLogsHttpLogsFileSystem, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory AppServiceLogsHttpLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogsHttpLogs(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (AppServiceLogsHttpLogsAzureBlobStorage.fromMap((map['azureBlobStorage']! as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (AppServiceLogsHttpLogsFileSystem.fromMap((map['fileSystem']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

