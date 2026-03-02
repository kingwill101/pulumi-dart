// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_http_logs_config.dart';
import 'file_system_http_logs_config.dart';

/// Http logs configuration.
class HttpLogsConfig {
  /// Http logs to azure blob storage configuration.
  final pulumi.Input<AzureBlobStorageHttpLogsConfig>? azureBlobStorage;
  /// Http logs to file system configuration.
  final pulumi.Input<FileSystemHttpLogsConfig>? fileSystem;

  /// Creates a new [HttpLogsConfig].
  /// [azureBlobStorage] Http logs to azure blob storage configuration.
  /// [fileSystem] Http logs to file system configuration.
  HttpLogsConfig({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageHttpLogsConfig, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<FileSystemHttpLogsConfig, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory HttpLogsConfig.fromMap(Map<String, dynamic> map) {
    return HttpLogsConfig(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (AzureBlobStorageHttpLogsConfig.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (FileSystemHttpLogsConfig.fromMap((map['fileSystem'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

