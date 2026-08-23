// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_log_http_log_azure_blob_storage.dart';
import 'get_windows_web_app_log_http_log_file_system.dart';

class GetWindowsWebAppLogHttpLog {
  /// A `azureBlobStorage` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppLogHttpLogAzureBlobStorage>> azureBlobStorages;
  /// A `fileSystem` block as defined above.
  final pulumi.Input<List<GetWindowsWebAppLogHttpLogFileSystem>> fileSystems;

  /// Creates a new [GetWindowsWebAppLogHttpLog].
  /// [azureBlobStorages] A `azureBlobStorage` block as defined above.
  /// [fileSystems] A `fileSystem` block as defined above.
  const GetWindowsWebAppLogHttpLog({
    required this.azureBlobStorages,
    required this.fileSystems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages': pulumi.Input.mapInputValue<List<GetWindowsWebAppLogHttpLogAzureBlobStorage>, List<Map<String, dynamic>>>(azureBlobStorages, (value) => pulumi.Input.encodeList<GetWindowsWebAppLogHttpLogAzureBlobStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSystems': pulumi.Input.mapInputValue<List<GetWindowsWebAppLogHttpLogFileSystem>, List<Map<String, dynamic>>>(fileSystems, (value) => pulumi.Input.encodeList<GetWindowsWebAppLogHttpLogFileSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWindowsWebAppLogHttpLog.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppLogHttpLog(
      azureBlobStorages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppLogHttpLogAzureBlobStorage>(map['azureBlobStorages']!, (value) => GetWindowsWebAppLogHttpLogAzureBlobStorage.fromMap((value as Map).cast<String, dynamic>()))),
      fileSystems: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWindowsWebAppLogHttpLogFileSystem>(map['fileSystems']!, (value) => GetWindowsWebAppLogHttpLogFileSystem.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
