// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_log_application_log_azure_blob_storage.dart';

class GetLinuxWebAppLogApplicationLog {
  /// A `azureBlobStorage` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppLogApplicationLogAzureBlobStorage>> azureBlobStorages;
  /// The logging level.
  final pulumi.Input<String> fileSystemLevel;

  /// Creates a new [GetLinuxWebAppLogApplicationLog].
  /// [azureBlobStorages] A `azureBlobStorage` block as defined above.
  /// [fileSystemLevel] The logging level.
  const GetLinuxWebAppLogApplicationLog({
    required this.azureBlobStorages,
    required this.fileSystemLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages': pulumi.Input.mapInputValue<List<GetLinuxWebAppLogApplicationLogAzureBlobStorage>, List<Map<String, dynamic>>>(azureBlobStorages, (value) => pulumi.Input.encodeList<GetLinuxWebAppLogApplicationLogAzureBlobStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystemLevel': fileSystemLevel,
    };
  }

  factory GetLinuxWebAppLogApplicationLog.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogApplicationLog(
      azureBlobStorages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLinuxWebAppLogApplicationLogAzureBlobStorage>(map['azureBlobStorages']!, (value) => GetLinuxWebAppLogApplicationLogAzureBlobStorage.fromMap((value as Map).cast<String, dynamic>()))),
      fileSystemLevel: pulumi.Input.fromValue(map['fileSystemLevel'] as String),
    );
  }
}
