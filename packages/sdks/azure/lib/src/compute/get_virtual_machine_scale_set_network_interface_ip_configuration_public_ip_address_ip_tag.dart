// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag {
  /// The IP Tag associated with the Public IP.
  final String tag;
  /// The Type of IP Tag.
  final String type;

  /// Creates a new [GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag].
  /// [tag] The IP Tag associated with the Public IP.
  /// [type] The Type of IP Tag.
  GetVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag({
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
      tag: map['tag'] as String,
      type: map['type'] as String,
    );
  }
}

