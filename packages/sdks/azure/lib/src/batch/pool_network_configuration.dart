// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_network_configuration_endpoint_configuration.dart';

class PoolNetworkConfiguration {
  /// Whether to enable accelerated networking. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? acceleratedNetworkingEnabled;
  /// The scope of dynamic vnet assignment. Allowed values: `none`, `job`. Changing this forces a new resource to be created. Defaults to `none`.
  final pulumi.Input<String>? dynamicVnetAssignmentScope;
  /// A list of `endpointConfiguration` blocks that can be used to address specific ports on an individual compute node externally as defined below. Set as documented in the inboundNatPools block below. Changing this forces a new resource to be created.
  final pulumi.Input<List<PoolNetworkConfigurationEndpointConfiguration>>? endpointConfigurations;
  /// Type of public IP address provisioning. Supported values are `BatchManaged`, `UserManaged` and `NoPublicIPAddresses`.
  final pulumi.Input<String>? publicAddressProvisioningType;
  /// A list of public IP ids that will be allocated to nodes. Changing this forces a new resource to be created.
  final pulumi.Input<List<String>>? publicIps;
  /// The ARM resource identifier of the virtual network subnet which the compute nodes of the pool will join. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [PoolNetworkConfiguration].
  /// [acceleratedNetworkingEnabled] Whether to enable accelerated networking. Possible values are `true` and `false`. Defaults to `false`. Changing this forces a new resource to be created.
  /// [dynamicVnetAssignmentScope] The scope of dynamic vnet assignment. Allowed values: `none`, `job`. Changing this forces a new resource to be created. Defaults to `none`.
  /// [endpointConfigurations] A list of `endpointConfiguration` blocks that can be used to address specific ports on an individual compute node externally as defined below. Set as documented in the inboundNatPools block below. Changing this forces a new resource to be created.
  /// [publicAddressProvisioningType] Type of public IP address provisioning. Supported values are `BatchManaged`, `UserManaged` and `NoPublicIPAddresses`.
  /// [publicIps] A list of public IP ids that will be allocated to nodes. Changing this forces a new resource to be created.
  /// [subnetId] The ARM resource identifier of the virtual network subnet which the compute nodes of the pool will join. Changing this forces a new resource to be created.
  const PoolNetworkConfiguration({
    this.acceleratedNetworkingEnabled,
    this.dynamicVnetAssignmentScope,
    this.endpointConfigurations,
    this.publicAddressProvisioningType,
    this.publicIps,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkingEnabled': ?acceleratedNetworkingEnabled,
      'dynamicVnetAssignmentScope': ?dynamicVnetAssignmentScope,
      'endpointConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PoolNetworkConfigurationEndpointConfiguration>, List<Map<String, dynamic>>>(endpointConfigurations, (value) => pulumi.Input.encodeList<PoolNetworkConfigurationEndpointConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicAddressProvisioningType': ?publicAddressProvisioningType,
      'publicIps': ?publicIps,
      'subnetId': ?subnetId,
    };
  }

  factory PoolNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolNetworkConfiguration(
      acceleratedNetworkingEnabled: (() { final guardedValue = map['acceleratedNetworkingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dynamicVnetAssignmentScope: (() { final guardedValue = map['dynamicVnetAssignmentScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointConfigurations: (() { final guardedValue = map['endpointConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolNetworkConfigurationEndpointConfiguration>(guardedValue, (value) => PoolNetworkConfigurationEndpointConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicAddressProvisioningType: (() { final guardedValue = map['publicAddressProvisioningType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIps: (() { final guardedValue = map['publicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
