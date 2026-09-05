// ignore_for_file: unused_element, unnecessary_cast

import 'get_node_device_info_capability.dart';

/// Result data returned by getNodeDeviceInfo.
class GetNodeDeviceInfoResult {
  /// Device capability details. Fields populated depend on the device type.
  final GetNodeDeviceInfoCapability? capability;
  /// Internal identifier for this data source.
  final String? id;
  /// Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  final String? name;
  /// Parent device name in the device hierarchy.
  final String? parent;
  /// Sysfs path to the device.
  final String? path;

  /// Creates a new [GetNodeDeviceInfoResult].
  /// [capability] Device capability details. Fields populated depend on the device type.
  /// [id] Internal identifier for this data source.
  /// [name] Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  /// [parent] Parent device name in the device hierarchy.
  /// [path] Sysfs path to the device.
  const GetNodeDeviceInfoResult({
    this.capability,
    this.id,
    this.name,
    this.parent,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capability': ?capability?.toMap(),
      'id': ?id,
      'name': ?name,
      'parent': ?parent,
      'path': ?path,
    };
  }

  factory GetNodeDeviceInfoResult.fromMap(Map<String, dynamic> map) {
    return GetNodeDeviceInfoResult(
      capability: (() { final guardedValue = map['capability']; if (guardedValue == null) return null; return GetNodeDeviceInfoCapability.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
