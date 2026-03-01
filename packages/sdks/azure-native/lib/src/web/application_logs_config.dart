// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_storage_application_logs_config.dart';
import 'azure_table_storage_application_logs_config.dart';
import 'file_system_application_logs_config.dart';

/// Application logs configuration.
class ApplicationLogsConfig {
  /// Application logs to blob storage configuration.
  final AzureBlobStorageApplicationLogsConfig? azureBlobStorage;
  /// Application logs to azure table storage configuration.
  final AzureTableStorageApplicationLogsConfig? azureTableStorage;
  /// Application logs to file system configuration.
  final FileSystemApplicationLogsConfig? fileSystem;

  /// Creates a new [ApplicationLogsConfig].
  /// [azureBlobStorage] Application logs to blob storage configuration.
  /// [azureTableStorage] Application logs to azure table storage configuration.
  /// [fileSystem] Application logs to file system configuration.
  ApplicationLogsConfig({
    this.azureBlobStorage,
    this.azureTableStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'azureTableStorage': ?azureTableStorage == null ? null : azureTableStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory ApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationLogsConfig(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : AzureBlobStorageApplicationLogsConfig.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      azureTableStorage: map['azureTableStorage'] == null ? null : AzureTableStorageApplicationLogsConfig.fromMap((map['azureTableStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : FileSystemApplicationLogsConfig.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

