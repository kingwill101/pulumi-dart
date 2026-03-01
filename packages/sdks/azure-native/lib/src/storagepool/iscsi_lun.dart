// ignore_for_file: unused_element, unnecessary_cast


/// LUN to expose the Azure Managed Disk.
class IscsiLun {
  /// Azure Resource ID of the Managed Disk.
  final String managedDiskAzureResourceId;
  /// User defined name for iSCSI LUN; example: "lun0"
  final String name;

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
      managedDiskAzureResourceId: map['managedDiskAzureResourceId'] as String,
      name: map['name'] as String,
    );
  }
}

