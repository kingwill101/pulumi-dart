// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag {
  /// The IP Tag associated with the Public IP.
  final pulumi.Input<String> tag;
  /// The Type of IP Tag.
  final pulumi.Input<String> type;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag].
  /// [tag] The IP Tag associated with the Public IP.
  /// [type] The Type of IP Tag.
  const GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag({
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'type': type,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag(
      tag: pulumi.Input.fromValue(map['tag'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
