// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag {
  /// The IP Tag associated with the Public IP, such as `SQL` or `Storage`. Changing this forces a new resource to be created.
  final String tag;
  /// The Type of IP Tag, such as `FirstPartyUsage`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag].
  /// [tag] The IP Tag associated with the Public IP, such as `SQL` or `Storage`. Changing this forces a new resource to be created.
  /// [type] The Type of IP Tag, such as `FirstPartyUsage`. Changing this forces a new resource to be created.
  OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag({
    required this.tag,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': tag,
      'type': type,
    };
  }

  factory OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag(
      tag: map['tag'] as String,
      type: map['type'] as String,
    );
  }
}

