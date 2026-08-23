// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_logs_application_logs_azure_blob_storage.dart';

class LinuxWebAppLogsApplicationLogs {
  /// An `azureBlobStorage` block as defined below.
  final pulumi.Input<LinuxWebAppLogsApplicationLogsAzureBlobStorage>? azureBlobStorage;
  /// Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  final pulumi.Input<String> fileSystemLevel;

  /// Creates a new [LinuxWebAppLogsApplicationLogs].
  /// [azureBlobStorage] An `azureBlobStorage` block as defined below.
  /// [fileSystemLevel] Log level. Possible values include: `Off`, `Verbose`, `Information`, `Warning`, and `Error`.
  const LinuxWebAppLogsApplicationLogs({
    this.azureBlobStorage,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppLogsApplicationLogsAzureBlobStorage, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory LinuxWebAppLogsApplicationLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogsApplicationLogs(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxWebAppLogsApplicationLogsAzureBlobStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystemLevel: pulumi.Input.fromValue(map['fileSystemLevel'] as String),
    );
  }
}
