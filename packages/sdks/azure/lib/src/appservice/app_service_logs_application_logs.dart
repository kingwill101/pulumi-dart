// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_logs_application_logs_azure_blob_storage.dart';

class AppServiceLogsApplicationLogs {
  /// An `azureBlobStorage` block as defined below.
  final pulumi.Input<AppServiceLogsApplicationLogsAzureBlobStorage?>? azureBlobStorage;
  /// Log level for filesystem based logging. Supported values are `Error`, `Information`, `Verbose`, `Warning` and `Off`. Defaults to `Off`.
  final pulumi.Input<String?>? fileSystemLevel;

  /// Creates a new [AppServiceLogsApplicationLogs].
  /// [azureBlobStorage] An `azureBlobStorage` block as defined below.
  /// [fileSystemLevel] Log level for filesystem based logging. Supported values are `Error`, `Information`, `Verbose`, `Warning` and `Off`. Defaults to `Off`.
  const AppServiceLogsApplicationLogs({
    this.azureBlobStorage,
    this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AppServiceLogsApplicationLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': ?fileSystemLevel,
    };
  }

  factory AppServiceLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return AppServiceLogsApplicationLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppServiceLogsApplicationLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLevel: (() { final guardedValue = map['fileSystemLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
