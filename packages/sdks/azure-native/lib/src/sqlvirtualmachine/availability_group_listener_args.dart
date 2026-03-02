// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ag_configuration.dart';
import 'load_balancer_configuration.dart';
import 'multi_subnet_ip_configuration.dart';

/// {@template pulumi_sqlvirtualmachine_availability_group_listener_args_doc}
/// The set of arguments for AvailabilityGroupListener.
/// {@endtemplate}
/// {@macro pulumi_sqlvirtualmachine_availability_group_listener_args_doc}
class AvailabilityGroupListenerArgs {
  /// Availability Group configuration.
  final pulumi.Input<AgConfiguration>? availabilityGroupConfiguration;
  /// Name of the availability group listener.
  final pulumi.Input<String>? availabilityGroupListenerName;
  /// Name of the availability group.
  final pulumi.Input<String>? availabilityGroupName;
  /// Create a default availability group if it does not exist.
  final pulumi.Input<bool>? createDefaultAvailabilityGroupIfNotExist;
  /// List of load balancer configurations for an availability group listener.
  final pulumi.Input<List<LoadBalancerConfiguration>>? loadBalancerConfigurations;
  /// List of multi subnet IP configurations for an AG listener.
  final pulumi.Input<List<MultiSubnetIpConfiguration>>? multiSubnetIpConfigurations;
  /// Listener port.
  final pulumi.Input<int>? port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the SQL virtual machine group.
  final pulumi.Input<String> sqlVirtualMachineGroupName;

  /// Creates a new [AvailabilityGroupListenerArgs].
  /// [availabilityGroupConfiguration] Availability Group configuration.
  /// [availabilityGroupListenerName] Name of the availability group listener.
  /// [availabilityGroupName] Name of the availability group.
  /// [createDefaultAvailabilityGroupIfNotExist] Create a default availability group if it does not exist.
  /// [loadBalancerConfigurations] List of load balancer configurations for an availability group listener.
  /// [multiSubnetIpConfigurations] List of multi subnet IP configurations for an AG listener.
  /// [port] Listener port.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlVirtualMachineGroupName] Name of the SQL virtual machine group.
  AvailabilityGroupListenerArgs({
    this.availabilityGroupConfiguration,
    this.availabilityGroupListenerName,
    this.availabilityGroupName,
    this.createDefaultAvailabilityGroupIfNotExist,
    this.loadBalancerConfigurations,
    this.multiSubnetIpConfigurations,
    this.port,
    required this.resourceGroupName,
    required this.sqlVirtualMachineGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupConfiguration': ?pulumi.Input.mapOptionalInputValue<AgConfiguration, Map<String, dynamic>>(availabilityGroupConfiguration, (value) => value.toMap()),
      'availabilityGroupListenerName': ?availabilityGroupListenerName,
      'availabilityGroupName': ?availabilityGroupName,
      'createDefaultAvailabilityGroupIfNotExist': ?createDefaultAvailabilityGroupIfNotExist,
      'loadBalancerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerConfiguration>, List<Map<String, dynamic>>>(loadBalancerConfigurations, (value) => pulumi.Input.encodeList<LoadBalancerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiSubnetIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<MultiSubnetIpConfiguration>, List<Map<String, dynamic>>>(multiSubnetIpConfigurations, (value) => pulumi.Input.encodeList<MultiSubnetIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'resourceGroupName': resourceGroupName,
      'sqlVirtualMachineGroupName': sqlVirtualMachineGroupName,
    };
  }

  factory AvailabilityGroupListenerArgs.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupListenerArgs(
      availabilityGroupConfiguration: map['availabilityGroupConfiguration'] == null ? null : (AgConfiguration.fromMap((map['availabilityGroupConfiguration'] as Map).cast<String, dynamic>())).input(),
      availabilityGroupListenerName: map['availabilityGroupListenerName'] == null ? null : (map['availabilityGroupListenerName'] as String).input(),
      availabilityGroupName: map['availabilityGroupName'] == null ? null : (map['availabilityGroupName'] as String).input(),
      createDefaultAvailabilityGroupIfNotExist: map['createDefaultAvailabilityGroupIfNotExist'] == null ? null : (map['createDefaultAvailabilityGroupIfNotExist'] as bool).input(),
      loadBalancerConfigurations: map['loadBalancerConfigurations'] == null ? null : (pulumi.Input.decodeList<LoadBalancerConfiguration>(map['loadBalancerConfigurations'], (value) => LoadBalancerConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multiSubnetIpConfigurations: map['multiSubnetIpConfigurations'] == null ? null : (pulumi.Input.decodeList<MultiSubnetIpConfiguration>(map['multiSubnetIpConfigurations'], (value) => MultiSubnetIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlVirtualMachineGroupName: (map['sqlVirtualMachineGroupName'] as String).input(),
    );
  }
}

