// ignore_for_file: unused_element, unnecessary_cast

import 'get_node_device_info_capability.dart';

/// Result data returned by getNodeDeviceInfo.
class GetNodeDeviceInfoResult {
  /// Device capability details. Fields populated depend on the device type.
  final GetNodeDeviceInfoCapability capability;
  /// Internal identifier for this data source.
  final String id;
  /// Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  final String name;
  /// Parent device name in the device hierarchy.
  final String parent;
  /// Sysfs path to the device.
  final String path;

  /// Creates a new [GetNodeDeviceInfoResult].
  /// [capability] Device capability details. Fields populated depend on the device type.
  /// [id] Internal identifier for this data source.
  /// [name] Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  /// [parent] Parent device name in the device hierarchy.
  /// [path] Sysfs path to the device.
  GetNodeDeviceInfoResult({
    required this.capability,
    required this.id,
    required this.name,
    required this.parent,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capability': capability.toMap(),
      'id': id,
      'name': name,
      'parent': parent,
      'path': path,
    };
  }

  factory GetNodeDeviceInfoResult.fromMap(Map<String, dynamic> map) {
    return GetNodeDeviceInfoResult(
      capability: GetNodeDeviceInfoCapability.fromMap((map['capability'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] as String,
      path: map['path'] as String,
    );
  }
}

