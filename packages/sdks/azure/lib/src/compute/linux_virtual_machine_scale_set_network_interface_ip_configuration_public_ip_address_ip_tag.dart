// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag {
  /// The IP Tag associated with the Public IP, such as `SQL` or `Storage`. Changing this forces a new resource to be created.
  final pulumi.Input<String> tag;
  /// The Type of IP Tag, such as `FirstPartyUsage`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag].
  /// [tag] The IP Tag associated with the Public IP, such as `SQL` or `Storage`. Changing this forces a new resource to be created.
  /// [type] The Type of IP Tag, such as `FirstPartyUsage`. Changing this forces a new resource to be created.
  const LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag({
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'type': type,
    };
  }

  factory LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag(
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
