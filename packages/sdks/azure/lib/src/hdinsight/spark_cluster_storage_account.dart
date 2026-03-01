// ignore_for_file: unused_element, unnecessary_cast


class SparkClusterStorageAccount {
  /// Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  ///
  /// > **Note:** One of the `storage_account` or `storage_account_gen2` blocks must be marked as the default.
  final bool isDefault;
  /// The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created.
  final String storageAccountKey;
  /// The ID of the Storage Container. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When the `azure.storage.Container` resource is created with `storage_account_name`, this can be obtained from the `id` of the `azure.storage.Container` resource. When the `azure.storage.Container` resource is created with `storage_account_id`, please use `azure.storage.getContainers` data source to get the `data_plane_id` of the `azure.storage.Container` resource for this field.
  final String storageContainerId;
  /// The ID of the Storage Account. Changing this forces a new resource to be created.
  final String? storageResourceId;

  /// Creates a new [SparkClusterStorageAccount].
  /// [isDefault] Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created.
  /// [storageAccountKey] The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created.
  /// [storageContainerId] The ID of the Storage Container. Changing this forces a new resource to be created.
  /// [storageResourceId] The ID of the Storage Account. Changing this forces a new resource to be created.
  SparkClusterStorageAccount({
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

  factory SparkClusterStorageAccount.fromMap(Map<String, dynamic> map) {
    return SparkClusterStorageAccount(
      isDefault: map['isDefault'] as bool,
      storageAccountKey: map['storageAccountKey'] as String,
      storageContainerId: map['storageContainerId'] as String,
      storageResourceId: map['storageResourceId'] == null ? null : map['storageResourceId'] as String,
    );
  }
}

