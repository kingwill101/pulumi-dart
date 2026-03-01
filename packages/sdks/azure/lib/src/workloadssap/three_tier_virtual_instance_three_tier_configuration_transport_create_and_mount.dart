// ignore_for_file: unused_element, unnecessary_cast


class ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount {
  /// The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created.
  final String? resourceGroupId;
  /// The name of the Storage Account of the File Share. Changing this forces a new resource to be created.
  final String? storageAccountName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount].
  /// [resourceGroupId] The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created.
  /// [storageAccountName] The name of the Storage Account of the File Share. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount({
    this.resourceGroupId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupId': ?resourceGroupId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount(
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
    );
  }
}

