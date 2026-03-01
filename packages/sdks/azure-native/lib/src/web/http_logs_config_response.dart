// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_storage_http_logs_config_response.dart';
import 'file_system_http_logs_config_response.dart';

/// Http logs configuration.
class HttpLogsConfigResponse {
  /// Http logs to azure blob storage configuration.
  final AzureBlobStorageHttpLogsConfigResponse? azureBlobStorage;
  /// Http logs to file system configuration.
  final FileSystemHttpLogsConfigResponse? fileSystem;

  /// Creates a new [HttpLogsConfigResponse].
  /// [azureBlobStorage] Http logs to azure blob storage configuration.
  /// [fileSystem] Http logs to file system configuration.
  HttpLogsConfigResponse({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?azureBlobStorage == null ? null : azureBlobStorage!.toMap(),
      'fileSystem': ?fileSystem == null ? null : fileSystem!.toMap(),
    };
  }

  factory HttpLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpLogsConfigResponse(
      azureBlobStorage: map['azureBlobStorage'] == null ? null : AzureBlobStorageHttpLogsConfigResponse.fromMap((map['azureBlobStorage'] as Map).cast<String, dynamic>()),
      fileSystem: map['fileSystem'] == null ? null : FileSystemHttpLogsConfigResponse.fromMap((map['fileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}

