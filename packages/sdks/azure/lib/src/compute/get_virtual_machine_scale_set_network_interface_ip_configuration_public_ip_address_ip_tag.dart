// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag {
  /// The IP Tag associated with the Public IP.
  final pulumi.Input<String> tag;
  /// The Type of IP Tag.
  final pulumi.Input<String> type;

  /// Creates a new [GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag].
  /// [tag] The IP Tag associated with the Public IP.
  /// [type] The Type of IP Tag.
  const GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag({
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'type': type,
    };
  }

  factory GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag(
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
