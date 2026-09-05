// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'three_tier_virtual_instance_three_tier_configuration_application_server_configuration_virtual_machine_configuration.dart';

class ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration {
  /// The number of instances for the Application Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  final pulumi.Input<int> instanceCount;
  /// The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;
  /// A `virtualMachineConfiguration` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfiguration> virtualMachineConfiguration;

  /// Creates a new [ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration].
  /// [instanceCount] The number of instances for the Application Server. Possible values are at least `1`. Changing this forces a new resource to be created.
  /// [subnetId] The resource ID of the Subnet for the Application Server. Changing this forces a new resource to be created.
  /// [virtualMachineConfiguration] A `virtualMachineConfiguration` block as defined below. Changing this forces a new resource to be created.
  const ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': pulumi.Input.mapInputValue<ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration.fromMap(Map<String, dynamic> map) {
    return ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfiguration(
      instanceCount: pulumi.Input.fromValue((map['instanceCount'] as num).toInt()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      virtualMachineConfiguration: pulumi.Input.fromValue(ThreeTierVirtualInstanceThreeTierConfigurationApplicationServerConfigurationVirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
