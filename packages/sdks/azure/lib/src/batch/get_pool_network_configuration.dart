// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_network_configuration_endpoint_configuration.dart';

class GetPoolNetworkConfiguration {
  final pulumi.Input<bool> acceleratedNetworkingEnabled;
  /// The scope of dynamic vnet assignment.
  final pulumi.Input<String> dynamicVnetAssignmentScope;
  /// The inbound NAT pools that are used to address specific ports on the individual compute node externally.
  final pulumi.Input<List<GetPoolNetworkConfigurationEndpointConfiguration>> endpointConfigurations;
  /// Type of public IP address provisioning.
  final pulumi.Input<String> publicAddressProvisioningType;
  /// A list of public IP ids that will be allocated to nodes.
  final pulumi.Input<List<String>> publicIps;
  /// The ARM resource identifier of the virtual network subnet which the compute nodes of the pool are joined too.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetPoolNetworkConfiguration].
  /// [acceleratedNetworkingEnabled] Required.
  /// [dynamicVnetAssignmentScope] The scope of dynamic vnet assignment.
  /// [endpointConfigurations] The inbound NAT pools that are used to address specific ports on the individual compute node externally.
  /// [publicAddressProvisioningType] Type of public IP address provisioning.
  /// [publicIps] A list of public IP ids that will be allocated to nodes.
  /// [subnetId] The ARM resource identifier of the virtual network subnet which the compute nodes of the pool are joined too.
  GetPoolNetworkConfiguration({
    required this.acceleratedNetworkingEnabled,
    required this.dynamicVnetAssignmentScope,
    required this.endpointConfigurations,
    required this.publicAddressProvisioningType,
    required this.publicIps,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': acceleratedNetworkingEnabled,
      'dynamicVnetAssignmentScope': dynamicVnetAssignmentScope,
      'endpointConfigurations': pulumi.Input.mapInputValue<List<GetPoolNetworkConfigurationEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<GetPoolNetworkConfigurationEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicAddressProvisioningType': publicAddressProvisioningType,
      'publicIps': publicIps,
      'subnetId': subnetId,
    };
  }

  factory GetPoolNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetPoolNetworkConfiguration(
      acceleratedNetworkingEnabled: (map['acceleratedNetworkingEnabled'] as bool).input(),
      dynamicVnetAssignmentScope: (map['dynamicVnetAssignmentScope'] as String).input(),
      endpointConfigurations: (pulumi.Input.decodeList<GetPoolNetworkConfigurationEndpointConfiguration>(map['endpointConfigurations'], (value) => GetPoolNetworkConfigurationEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      publicAddressProvisioningType: (map['publicAddressProvisioningType'] as String).input(),
      publicIps: ((map['publicIps'] as List).cast<String>()).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

