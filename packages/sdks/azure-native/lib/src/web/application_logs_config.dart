// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_application_logs_config.dart';
import 'azure_table_storage_application_logs_config.dart';
import 'file_system_application_logs_config.dart';

/// Application logs configuration.
class ApplicationLogsConfig {
  /// Application logs to blob storage configuration.
  final pulumi.Input<AzureBlobStorageApplicationLogsConfig>? azureBlobStorage;
  /// Application logs to azure table storage configuration.
  final pulumi.Input<AzureTableStorageApplicationLogsConfig>? azureTableStorage;
  /// Application logs to file system configuration.
  final pulumi.Input<FileSystemApplicationLogsConfig>? fileSystem;

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
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageApplicationLogsConfig, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'azureTableStorage': ?pulumi.Input.mapOptionalInputValue<AzureTableStorageApplicationLogsConfig, Map<String, dynamic>>(azureTableStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<FileSystemApplicationLogsConfig, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory ApplicationLogsConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationLogsConfig(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (AzureBlobStorageApplicationLogsConfig.fromMap((map['azureBlobStorage']! as Map).cast<String, dynamic>())).input(),
      azureTableStorage: map['azureTableStorage'] == null ? null : (AzureTableStorageApplicationLogsConfig.fromMap((map['azureTableStorage']! as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (FileSystemApplicationLogsConfig.fromMap((map['fileSystem']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

