// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCostManagementExportExportDataStorageLocation {
  /// The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerId;
  /// The path of the directory where exports will be uploaded. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The Resource Manager ID of a Storage Container is exposed via the `resourceManagerId` attribute of the `azure.storage.Container` resource.
  final pulumi.Input<String> rootFolderPath;

  /// Creates a new [SubscriptionCostManagementExportExportDataStorageLocation].
  /// [containerId] The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created.
  /// [rootFolderPath] The path of the directory where exports will be uploaded. Changing this forces a new resource to be created.
  const SubscriptionCostManagementExportExportDataStorageLocation({
    required this.containerId,
    required this.rootFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerId': containerId,
      'rootFolderPath': rootFolderPath,
    };
  }

  factory SubscriptionCostManagementExportExportDataStorageLocation.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementExportExportDataStorageLocation(
      containerId: pulumi.Input.fromValue(map['containerId'] as String),
      rootFolderPath: pulumi.Input.fromValue(map['rootFolderPath'] as String),
    );
  }
}
