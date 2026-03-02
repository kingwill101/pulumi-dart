// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LUN to expose the Azure Managed Disk.
class IscsiLunResponse {
  /// Specifies the Logical Unit Number of the iSCSI LUN.
  final pulumi.Input<int> lun;
  /// Azure Resource ID of the Managed Disk.
  final pulumi.Input<String> managedDiskAzureResourceId;
  /// User defined name for iSCSI LUN; example: "lun0"
  final pulumi.Input<String> name;

  /// Creates a new [IscsiLunResponse].
  /// [lun] Specifies the Logical Unit Number of the iSCSI LUN.
  /// [managedDiskAzureResourceId] Azure Resource ID of the Managed Disk.
  /// [name] User defined name for iSCSI LUN; example: "lun0"
  IscsiLunResponse({
    required this.lun,
    required this.managedDiskAzureResourceId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lun': lun,
      'managedDiskAzureResourceId': managedDiskAzureResourceId,
      'name': name,
    };
  }

  factory IscsiLunResponse.fromMap(Map<String, dynamic> map) {
    return IscsiLunResponse(
      lun: (map['lun'] as int).input(),
      managedDiskAzureResourceId: (map['managedDiskAzureResourceId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

