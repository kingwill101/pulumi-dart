// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_storage_http_logs_config_response.dart';
import 'file_system_http_logs_config_response.dart';

/// Http logs configuration.
class HttpLogsConfigResponse {
  /// Http logs to azure blob storage configuration.
  final pulumi.Input<AzureBlobStorageHttpLogsConfigResponse?>? azureBlobStorage;
  /// Http logs to file system configuration.
  final pulumi.Input<FileSystemHttpLogsConfigResponse?>? fileSystem;

  /// Creates a new [HttpLogsConfigResponse].
  /// [azureBlobStorage] Http logs to azure blob storage configuration.
  /// [fileSystem] Http logs to file system configuration.
  const HttpLogsConfigResponse({
    this.azureBlobStorage,
    this.fileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<AzureBlobStorageHttpLogsConfigResponse, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<FileSystemHttpLogsConfigResponse, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
    };
  }

  factory HttpLogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return HttpLogsConfigResponse(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureBlobStorageHttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileSystemHttpLogsConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
