// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_log_application_log_azure_blob_storage.dart';

class GetWindowsWebAppLogApplicationLog {
  /// A `azure_blob_storage` block as defined above.
  final List<GetWindowsWebAppLogApplicationLogAzureBlobStorage> azureBlobStorages;
  /// The logging level.
  final String fileSystemLevel;

  /// Creates a new [GetWindowsWebAppLogApplicationLog].
  /// [azureBlobStorages] A `azure_blob_storage` block as defined above.
  /// [fileSystemLevel] The logging level.
  GetWindowsWebAppLogApplicationLog({
    required this.azureBlobStorages,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages': pulumi.Input.encodeList<GetWindowsWebAppLogApplicationLogAzureBlobStorage, Map<String, dynamic>>(azureBlobStorages, (value) => value.toMap()),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory GetWindowsWebAppLogApplicationLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogApplicationLog(
      azureBlobStorages: pulumi.Input.decodeList<GetWindowsWebAppLogApplicationLogAzureBlobStorage>(map['azureBlobStorages'], (value) => GetWindowsWebAppLogApplicationLogAzureBlobStorage.fromMap((value as Map).cast<String, dynamic>())),
      fileSystemLevel: map['fileSystemLevel'] as String,
    );
  }
}

