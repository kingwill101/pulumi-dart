// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HBaseClusterStorageAccount {
  /// Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** One of the `storageAccount` or `storageAccountGen2` blocks must be marked as the default.
  final pulumi.Input<bool> isDefault;
  /// The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountKey;
  /// The ID of the Storage Container. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When the `azure.storage.Container` resource is created with `storageAccountName`, this can be obtained from the `id` of the `azure.storage.Container` resource. When the `azure.storage.Container` resource is created with `storageAccountId`, please use `azure.storage.getContainers` data source to get the `dataPlaneId` of the `azure.storage.Container` resource for this field.
  final pulumi.Input<String> storageContainerId;
  /// The ID of the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageResourceId;

  /// Creates a new [HBaseClusterStorageAccount].
  /// [isDefault] Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  /// [storageAccountKey] The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created.
  /// [storageContainerId] The ID of the Storage Container. Changing this forces a new resource to be created.
  /// [storageResourceId] The ID of the Storage Account. Changing this forces a new resource to be created.
  const HBaseClusterStorageAccount({
    required this.isDefault,
    required this.storageAccountKey,
    required this.storageContainerId,
    this.storageResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefault': isDefault,
      'storageAccountKey': storageAccountKey,
      'storageContainerId': storageContainerId,
      'storageResourceId': ?storageResourceId,
    };
  }

  factory HBaseClusterStorageAccount.fromMap(Map<String, dynamic> map) {
    return HBaseClusterStorageAccount(
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      storageAccountKey: pulumi.Input.fromValue(map['storageAccountKey'] as String),
      storageContainerId: pulumi.Input.fromValue(map['storageContainerId'] as String),
      storageResourceId: (() { final guardedValue = map['storageResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
