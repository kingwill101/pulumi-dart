// ignore_for_file: unused_element, unnecessary_cast

import 'three_tier_virtual_instance_three_tier_configuration_central_server_configuration_virtual_machine_configuration.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration {
  /// The number of instances for the Central Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  final int instanceCount;
  /// The resource ID of the Subnet for the Central Server. Changing this forces a new resource to be created.
  final String subnetId;
  /// A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  final ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration virtualMachineConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration].
  /// [instanceCount] The number of instances for the Central Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the Central Server. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtual_machine_configuration` block as defined below. Changing this forces a new resource to be created.
  ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfiguration(
      instanceCount: map['instanceCount'] as int,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: ThreeTierVirtualInstanceThreeTierConfigurationCentralServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

