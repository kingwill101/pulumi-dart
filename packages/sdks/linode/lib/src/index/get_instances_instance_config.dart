// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_config_device.dart';
import 'get_instances_instance_config_helper.dart';
import 'get_instances_instance_config_interface.dart';

class GetInstancesInstanceConfig {
  /// Arbitrary user comments about this `config`.
  final String comments;
  /// A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
  final List<GetInstancesInstanceConfigDevice> devices;
  /// Helpers enabled when booting to this Linode Config.
  final List<GetInstancesInstanceConfigHelper> helpers;
  /// The ID of the Placement Group in the Linode API.
  final int id;
  /// An array of Network Interfaces for this Linode’s Configuration Profile.
  final List<GetInstancesInstanceConfigInterface> interfaces;
  /// A Kernel ID to boot a Linode with. Default is based on image choice. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  final String kernel;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final String label;
  /// Defaults to the total RAM of the Linode
  final int memoryLimit;
  /// The root device to boot.
  final String rootDevice;
  /// Defines the state of your Linode after booting.
  final String runLevel;
  /// Controls the virtualization mode.
  final String virtMode;

  /// Creates a new [GetInstancesInstanceConfig].
  /// [comments] Arbitrary user comments about this `config`.
  /// [devices] A list of `disk` or `volume` attachments for this `config`.  If the `boot_config_label` omits a `devices` block, the Linode will not be booted.
  /// [helpers] Helpers enabled when booting to this Linode Config.
  /// [id] The ID of the Placement Group in the Linode API.
  /// [interfaces] An array of Network Interfaces for this Linode’s Configuration Profile.
  /// [kernel] A Kernel ID to boot a Linode with. Default is based on image choice. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [memoryLimit] Defaults to the total RAM of the Linode
  /// [rootDevice] The root device to boot.
  /// [runLevel] Defines the state of your Linode after booting.
  /// [virtMode] Controls the virtualization mode.
  GetInstancesInstanceConfig({
    required this.comments,
    required this.devices,
    required this.helpers,
    required this.id,
    required this.interfaces,
    required this.kernel,
    required this.label,
    required this.memoryLimit,
    required this.rootDevice,
    required this.runLevel,
    required this.virtMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comments': comments,
      'devices': pulumi.Input.encodeList<GetInstancesInstanceConfigDevice, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'helpers': pulumi.Input.encodeList<GetInstancesInstanceConfigHelper, Map<String, dynamic>>(helpers, (value) => value.toMap()),
      'id': id,
      'interfaces': pulumi.Input.encodeList<GetInstancesInstanceConfigInterface, Map<String, dynamic>>(interfaces, (value) => value.toMap()),
      'kernel': kernel,
      'label': label,
      'memoryLimit': memoryLimit,
      'rootDevice': rootDevice,
      'runLevel': runLevel,
      'virtMode': virtMode,
    };
  }

  factory GetInstancesInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceConfig(
      comments: map['comments'] as String,
      devices: pulumi.Input.decodeList<GetInstancesInstanceConfigDevice>(map['devices'], (value) => GetInstancesInstanceConfigDevice.fromMap((value as Map).cast<String, dynamic>())),
      helpers: pulumi.Input.decodeList<GetInstancesInstanceConfigHelper>(map['helpers'], (value) => GetInstancesInstanceConfigHelper.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as int,
      interfaces: pulumi.Input.decodeList<GetInstancesInstanceConfigInterface>(map['interfaces'], (value) => GetInstancesInstanceConfigInterface.fromMap((value as Map).cast<String, dynamic>())),
      kernel: map['kernel'] as String,
      label: map['label'] as String,
      memoryLimit: map['memoryLimit'] as int,
      rootDevice: map['rootDevice'] as String,
      runLevel: map['runLevel'] as String,
      virtMode: map['virtMode'] as String,
    );
  }
}

