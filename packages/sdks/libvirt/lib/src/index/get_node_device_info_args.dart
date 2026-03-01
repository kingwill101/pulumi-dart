// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_node_device_info_get_node_device_info_args_doc}
/// Arguments for getNodeDeviceInfo.
/// {@endtemplate}
/// {@macro pulumi_index_get_node_device_info_get_node_device_info_args_doc}
class GetNodeDeviceInfoArgs {
  /// Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  final pulumi.Input<String> name;

  /// Creates a new [GetNodeDeviceInfoArgs].
  /// [name] Device name from `libvirt.getNodeDevices` data source (e.g., `pci_0000_00_1f_2`).
  GetNodeDeviceInfoArgs({
    required pulumi.Output<String> name,
  }) :
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetNodeDeviceInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeDeviceInfoArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

