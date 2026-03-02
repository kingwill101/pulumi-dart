// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_network_interface_ip_configuration_public_ip_address_ip_tag.dart';

class OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress {
  /// The Prefix which should be used for the Domain Name Label for each Virtual Machine Instance. Azure concatenates the Domain Name Label and Virtual Machine Index to create a unique Domain Name Label for each Virtual Machine. Valid values must be between `1` and `26` characters long, start with a lower case letter, end with a lower case letter or number and contains only `a-z`, `0-9` and `hyphens`.
  final pulumi.Input<String>? domainNameLabel;
  /// The Idle Timeout in Minutes for the Public IP Address. Possible values are in the range `4` to `32`.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// One or more `ip_tag` blocks as defined above. Changing this forces a new resource to be created.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>>? ipTags;
  /// The Name of the Public IP Address Configuration.
  final pulumi.Input<String> name;
  /// The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? publicIpPrefixId;
  /// Specifies what Public IP Address SKU the Public IP Address should be provisioned as. Possible vaules include `Basic_Regional`, `Basic_Global`, `Standard_Regional` or `Standard_Global`. For more information about Public IP Address SKU's and their capabilities, please see the [product documentation](https://docs.microsoft.com/azure/virtual-network/ip-services/public-ip-addresses#sku). Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// The Internet Protocol Version which should be used for this public IP address. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress].
  /// [domainNameLabel] The Prefix which should be used for the Domain Name Label for each Virtual Machine Instance. Azure concatenates the Domain Name Label and Virtual Machine Index to create a unique Domain Name Label for each Virtual Machine. Valid values must be between `1` and `26` characters long, start with a lower case letter, end with a lower case letter or number and contains only `a-z`, `0-9` and `hyphens`.
  /// [idleTimeoutInMinutes] The Idle Timeout in Minutes for the Public IP Address. Possible values are in the range `4` to `32`.
  /// [ipTags] One or more `ip_tag` blocks as defined above. Changing this forces a new resource to be created.
  /// [name] The Name of the Public IP Address Configuration.
  /// [publicIpPrefixId] The ID of the Public IP Address Prefix from where Public IP Addresses should be allocated. Changing this forces a new resource to be created.
  /// [skuName] Specifies what Public IP Address SKU the Public IP Address should be provisioned as. Possible vaules include `Basic_Regional`, `Basic_Global`, `Standard_Regional` or `Standard_Global`. For more information about Public IP Address SKU's and their capabilities, please see the [product documentation](https://docs.microsoft.com/azure/virtual-network/ip-services/public-ip-addresses#sku). Changing this forces a new resource to be created.
  /// [version] The Internet Protocol Version which should be used for this public IP address. Possible values are `IPv4` and `IPv6`. Defaults to `IPv4`. Changing this forces a new resource to be created.
  OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress({
    this.domainNameLabel,
    this.idleTimeoutInMinutes,
    this.ipTags,
    required this.name,
    this.publicIpPrefixId,
    this.skuName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': ?domainNameLabel,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIpPrefixId': ?publicIpPrefixId,
      'skuName': ?skuName,
      'version': ?version,
    };
  }

  factory OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddress(
      domainNameLabel: map['domainNameLabel'] == null ? null : (map['domainNameLabel']! as String).input(),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : (map['idleTimeoutInMinutes']! as int).input(),
      ipTags: map['ipTags'] == null ? null : (pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag>(map['ipTags']!, (value) => OrchestratedVirtualMachineScaleSetNetworkInterfaceIpConfigurationPublicIpAddressIpTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : (map['publicIpPrefixId']! as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

