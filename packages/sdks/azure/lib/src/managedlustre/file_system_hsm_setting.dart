// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemHsmSetting {
  /// The resource ID of the storage container that is used for hydrating the namespace and archiving from the namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerId;
  /// The import prefix for the Azure Managed Lustre File System. Only blobs in the non-logging container that start with this path/prefix get hydrated into the cluster namespace. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The roles `Contributor` and `Storage Blob Data Contributor` must be added to the Service Principal `HPC Cache Resource Provider` for the Storage Account. See official docs for more information.
  final pulumi.Input<String>? importPrefix;
  /// The resource ID of the storage container that is used for logging events and errors. Changing this forces a new resource to be created.
  final pulumi.Input<String> loggingContainerId;

  /// Creates a new [FileSystemHsmSetting].
  /// [containerId] The resource ID of the storage container that is used for hydrating the namespace and archiving from the namespace. Changing this forces a new resource to be created.
  /// [importPrefix] The import prefix for the Azure Managed Lustre File System. Only blobs in the non-logging container that start with this path/prefix get hydrated into the cluster namespace. Changing this forces a new resource to be created.
  /// [loggingContainerId] The resource ID of the storage container that is used for logging events and errors. Changing this forces a new resource to be created.
  const FileSystemHsmSetting({
    required this.containerId,
    this.importPrefix,
    required this.loggingContainerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerId': containerId,
      'importPrefix': ?importPrefix,
      'loggingContainerId': loggingContainerId,
    };
  }

  factory FileSystemHsmSetting.fromMap(Map<String, dynamic> map) {
    return FileSystemHsmSetting(
      containerId: pulumi.Input.fromValue(map['containerId'] as String),
      importPrefix: (() { final guardedValue = map['importPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingContainerId: pulumi.Input.fromValue(map['loggingContainerId'] as String),
    );
  }
}

