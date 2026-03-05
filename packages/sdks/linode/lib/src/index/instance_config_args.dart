// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_device.dart';
import 'instance_config_devices.dart';
import 'instance_config_helper.dart';
import 'instance_config_interface.dart';

/// {@template pulumi_index_instance_config_instance_config_args_doc}
/// The set of arguments for InstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_index_instance_config_instance_config_args_doc}
class InstanceConfigArgs {
  /// If true, the Linode will be booted into this config. If another config is booted, the Linode will be rebooted into this config. If false, the Linode will be shutdown only if it is currently booted into this config. If undefined, the config will alter the boot status of the Linode.
  final pulumi.Input<bool>? booted;
  /// Optional field for arbitrary User comments on this Config.
  ///
  /// * `devices` - (Optional) A dictionary of device disks to use as a device map in a Linode’s configuration profile.
  ///
  /// * `helpers` - (Optional) Helpers enabled when booting to this Linode Config.
  ///
  /// * `interface` - (Optional) An array of Network Interfaces to use for this Configuration Profile.
  final pulumi.Input<String>? comments;
  /// Blocks for device disks in a Linode's configuration profile.
  final pulumi.Input<List<InstanceConfigDevice>>? device;
  /// A dictionary of device disks to use as a device map in a Linode's configuration profile.
  final pulumi.Input<InstanceConfigDevices>? devices;
  /// Helpers enabled when booting to this Linode Config.
  final pulumi.Input<List<InstanceConfigHelper>>? helpers;
  /// An array of Network Interfaces to add to this Linode's Configuration Profile.
  final pulumi.Input<List<InstanceConfigInterface>>? interfaces;
  /// A Kernel ID to boot a Linode with. Default is `linode/latest-64bit`. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  final pulumi.Input<String>? kernel;
  /// The Config’s label for display purposes only.
  ///
  /// - - -
  final pulumi.Input<String> label;
  /// The ID of the Linode to create this configuration profile under.
  final pulumi.Input<int> linodeId;
  /// The memory limit of the Config. Defaults to the total ram of the Linode.
  final pulumi.Input<int>? memoryLimit;
  /// The root device to boot. (default `/dev/sda`)
  final pulumi.Input<String>? rootDevice;
  /// Defines the state of your Linode after booting. (`default`, `single`, `binbash`)
  final pulumi.Input<String>? runLevel;
  /// Controls the virtualization mode. (`paravirt`, `fullvirt`)
  final pulumi.Input<String>? virtMode;

  /// Creates a new [InstanceConfigArgs].
  /// [booted] If true, the Linode will be booted into this config. If another config is booted, the Linode will be rebooted into this config. If false, the Linode will be shutdown only if it is currently booted into this config. If undefined, the config will alter the boot status of the Linode.
  /// [comments] Optional field for arbitrary User comments on this Config.
  /// [device] Blocks for device disks in a Linode's configuration profile.
  /// [devices] A dictionary of device disks to use as a device map in a Linode's configuration profile.
  /// [helpers] Helpers enabled when booting to this Linode Config.
  /// [interfaces] An array of Network Interfaces to add to this Linode's Configuration Profile.
  /// [kernel] A Kernel ID to boot a Linode with. Default is `linode/latest-64bit`. Examples are `linode/latest-64bit`, `linode/grub2`, `linode/direct-disk`, etc. See all kernels [here](https://api.linode.com/v4/linode/kernels). Note that this is a paginated API endpoint ([docs](https://techdocs.akamai.com/linode-api/reference/get-kernels)).
  /// [label] The Config’s label for display purposes only.
  /// [linodeId] The ID of the Linode to create this configuration profile under.
  /// [memoryLimit] The memory limit of the Config. Defaults to the total ram of the Linode.
  /// [rootDevice] The root device to boot. (default `/dev/sda`)
  /// [runLevel] Defines the state of your Linode after booting. (`default`, `single`, `binbash`)
  /// [virtMode] Controls the virtualization mode. (`paravirt`, `fullvirt`)
  InstanceConfigArgs({
    this.booted,
    this.comments,
    this.device,
    this.devices,
    this.helpers,
    this.interfaces,
    this.kernel,
    required this.label,
    required this.linodeId,
    this.memoryLimit,
    this.rootDevice,
    this.runLevel,
    this.virtMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booted': ?booted,
      'comments': ?comments,
      'device': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigDevice>, List<Map<String, dynamic>>>(device, (value) => pulumi.Input.encodeList<InstanceConfigDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'devices': ?pulumi.Input.mapOptionalInputValue<InstanceConfigDevices, Map<String, dynamic>>(devices, (value) => value.toMap()),
      'helpers': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigHelper>, List<Map<String, dynamic>>>(helpers, (value) => pulumi.Input.encodeList<InstanceConfigHelper, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<InstanceConfigInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kernel': ?kernel,
      'label': label,
      'linodeId': linodeId,
      'memoryLimit': ?memoryLimit,
      'rootDevice': ?rootDevice,
      'runLevel': ?runLevel,
      'virtMode': ?virtMode,
    };
  }

  factory InstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConfigArgs(
      booted: (() { final guardedValue = map['booted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      device: (() { final guardedValue = map['device']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfigDevice>(guardedValue, (value) => InstanceConfigDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConfigDevices.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      helpers: (() { final guardedValue = map['helpers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfigHelper>(guardedValue, (value) => InstanceConfigHelper.fromMap((value as Map).cast<String, dynamic>()))); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfigInterface>(guardedValue, (value) => InstanceConfigInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kernel: (() { final guardedValue = map['kernel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      memoryLimit: (() { final guardedValue = map['memoryLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rootDevice: (() { final guardedValue = map['rootDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runLevel: (() { final guardedValue = map['runLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtMode: (() { final guardedValue = map['virtMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

