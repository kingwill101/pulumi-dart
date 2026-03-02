// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_application_logs_config_response.dart';
import 'azure_table_storage_application_logs_config_response.dart';
import 'file_system_application_logs_config_response.dart';

/// Application logs configuration.
class ApplicationLogsConfigResponse {
  /// Application logs to blob storage configuration.
  final pulumi.Input<AzureBlobStorageApplicationLogsConfigResponse>? azureBlobStorage;
  /// Application logs to azure table storage configuration.
  final pulumi.Input<AzureTableStorageApplicationLogsConfigResponse>? azureTableStorage;
  /// Application logs to file system configuration.
  final pulumi.Input<FileSystemApplicationLogsConfigResponse>? fileSystem;

  /// Creates a new [ApplicationLogsConfigResponse].
  /// [azureBlobStorage] Application logs to blob storage configuration.
  /// [azureTableStorage] Application logs to azure table storage configuration.
  /// [fileSystem] Application logs to file system configuration.
  ApplicationLogsConfigResponse({
    this.azureBlobStorage,
    this.azureTableStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageApplicationLogsConfigResponse, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'azureTableStorage': ?pulumi.Input.mapOptionalInputValue<AzureTableStorageApplicationLogsConfigResponse, Map<String, dynamic>>(azureTableStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<FileSystemApplicationLogsConfigResponse, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory ApplicationLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationLogsConfigResponse(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : (AzureBlobStorageApplicationLogsConfigResponse.fromMap((map['azureBlobStorage']! as Map).cast<String, dynamic>())).input(),
      azureTableStorage: map['azureTableStorage'] == null ? null : (AzureTableStorageApplicationLogsConfigResponse.fromMap((map['azureTableStorage']! as Map).cast<String, dynamic>())).input(),
      fileSystem: map['fileSystem'] == null ? null : (FileSystemApplicationLogsConfigResponse.fromMap((map['fileSystem']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

