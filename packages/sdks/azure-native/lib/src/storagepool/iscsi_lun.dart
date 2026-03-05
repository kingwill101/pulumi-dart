// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LUN to expose the Azure Managed Disk.
class IscsiLun {
  /// Azure Resource ID of the Managed Disk.
  final pulumi.Input<String> managedDiskAzureResourceId;
  /// User defined name for iSCSI LUN; example: "lun0"
  final pulumi.Input<String> name;

  /// Creates a new [IscsiLun].
  /// [managedDiskAzureResourceId] Azure Resource ID of the Managed Disk.
  /// [name] User defined name for iSCSI LUN; example: "lun0"
  IscsiLun({
    required this.managedDiskAzureResourceId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDiskAzureResourceId': managedDiskAzureResourceId,
      'name': name,
    };
  }

  factory IscsiLun.fromMap(Map<String, dynamic> map) {
    return IscsiLun(
      managedDiskAzureResourceId: pulumi.Input.fromValue(map['managedDiskAzureResourceId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

