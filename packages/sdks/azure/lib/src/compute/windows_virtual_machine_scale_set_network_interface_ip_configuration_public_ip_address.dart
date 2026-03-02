// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address_ip_tag.dart';

class WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress {
  /// The Prefix which should be used for the Domain Name Label for each Virtual Machine Instance. Azure concatenates the Domain Name Label and Virtual Machine Index to create a unique Domain Name Label for each Virtual Machine.
  final pulumi.Input<String>? domainNameLabel;
  /// The Idle Timeout in Minutes for the Public IP Address. Possible values are in the range `4` to `32`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// One or more `ip_tag` blocks as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>>? ipTags;
  /// The Name of the Public IP Address Configuration.
  final pulumi.Input<String> name;
  /// The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This functionality is in Preview and must be opted into via `az feature register --namespace Microsoft.Network --name AllowBringYourOwnPublicIpAddress` and then `az provider register -n Microsoft.Network`.
  final pulumi.Input<String>? publicIpPrefixId;
  /// The Internet Protocol Version which should be used for this public IP address. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress].
  /// [domainNameLabel] The Prefix which should be used for the Domain Name Label for each Virtual Machine Instance. Azure concatenates the Domain Name Label and Virtual Machine Index to create a unique Domain Name Label for each Virtual Machine.
  /// [idleTimeoutInMinutes] The Idle Timeout in Minutes for the Public IP Address. Possible values are in the range `4` to `32`.
  /// [ipTags] One or more `ip_tag` blocks as defined above. Changing this forces a new resource to be created.
  /// [name] The Name of the Public IP Address Configuration.
  /// [publicIpPrefixId] The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated. Changing this forces a new resource to be created.
  /// [version] The Internet Protocol Version which should be used for this public IP address. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`. Changing this forces a new resource to be created.
  WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress({
    this.domainNameLabel,
    this.idleTimeoutInMinutes,
    this.ipTags,
    required this.name,
    this.publicIpPrefixId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': ?domainNameLabel,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIpPrefixId': ?publicIpPrefixId,
      'version': ?version,
    };
  }

  factory WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress(
      domainNameLabel: map['domainNameLabel'] == null ? null : (map['domainNameLabel'] as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes'] as int).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>(map['ipTags'], (value) => WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : (map['publicIpPrefixId'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

