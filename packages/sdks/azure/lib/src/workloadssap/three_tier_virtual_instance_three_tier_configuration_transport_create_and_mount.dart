// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount {
  /// The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the Storage Account of the File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount].
  /// [resourceGroupId] The ID of the Resource Group of the transport File Share. Changing this forces a new resource to be created.
  /// [storageAccountName] The name of the Storage Account of the File Share. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationTransportCreateAndMount({
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
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

