// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_log_http_log_azure_blob_storage.dart';
import 'get_linux_web_app_log_http_log_file_system.dart';

class GetLinuxWebAppLogHttpLog {
  /// A `azure_blob_storage` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppLogHttpLogAzureBlobStorage>>
  azureBlobStorages;

  /// A `file_system` block as defined above.
  final pulumi.Input<List<GetLinuxWebAppLogHttpLogFileSystem>> fileSystems;

  /// Creates a new [GetLinuxWebAppLogHttpLog].
  /// [azureBlobStorages] A `azure_blob_storage` block as defined above.
  /// [fileSystems] A `file_system` block as defined above.
  GetLinuxWebAppLogHttpLog({
    required this.azureBlobStorages,
    required this.fileSystems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorages':
          pulumi.Input.mapInputValue<
            List<GetLinuxWebAppLogHttpLogAzureBlobStorage>,
            List<Map<String, dynamic>>
          >(
            azureBlobStorages,
            (value) =>
                pulumi.Input.encodeList<
                  GetLinuxWebAppLogHttpLogAzureBlobStorage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fileSystems':
          pulumi.Input.mapInputValue<
            List<GetLinuxWebAppLogHttpLogFileSystem>,
            List<Map<String, dynamic>>
          >(
            fileSystems,
            (value) =>
                pulumi.Input.encodeList<
                  GetLinuxWebAppLogHttpLogFileSystem,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetLinuxWebAppLogHttpLog.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppLogHttpLog(
      azureBlobStorages: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLinuxWebAppLogHttpLogAzureBlobStorage>(
          map['azureBlobStorages']!,
          (value) => GetLinuxWebAppLogHttpLogAzureBlobStorage.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      fileSystems: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetLinuxWebAppLogHttpLogFileSystem>(
          map['fileSystems']!,
          (value) => GetLinuxWebAppLogHttpLogFileSystem.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
