// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_availability_group_listener_load_balancer_configuration.dart';
import 'virtual_machine_availability_group_listener_multi_subnet_ip_configuration.dart';
import 'virtual_machine_availability_group_listener_replica.dart';

/// Input properties used for looking up and filtering VirtualMachineAvailabilityGroupListener resources.
class VirtualMachineAvailabilityGroupListenerState {
  /// The name of the Availability Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilityGroupName;
  /// A `load_balancer_configuration` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Either one of `load_balancer_configuration` or `multi_subnet_ip_configuration` must be specified.
  final pulumi.Input<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration>? loadBalancerConfiguration;
  /// One or more `multi_subnet_ip_configuration` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>>? multiSubnetIpConfigurations;
  /// The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The port of the listener. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerReplica>>? replicas;
  /// The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sqlVirtualMachineGroupId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerState].
  /// [availabilityGroupName] The name of the Availability Group. Changing this forces a new resource to be created.
  /// [loadBalancerConfiguration] A `load_balancer_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [multiSubnetIpConfigurations] One or more `multi_subnet_ip_configuration` blocks as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  /// [port] The port of the listener. Changing this forces a new resource to be created.
  /// [replicas] One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineGroupId] The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  VirtualMachineAvailabilityGroupListenerState({
    this.availabilityGroupName,
    this.loadBalancerConfiguration,
    this.multiSubnetIpConfigurations,
    this.name,
    this.port,
    this.replicas,
    this.sqlVirtualMachineGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': ?availabilityGroupName,
      'loadBalancerConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration, Map<String, dynamic>>(loadBalancerConfiguration, (value) => value.toMap()),
      'multiSubnetIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>, List<Map<String, dynamic>>>(multiSubnetIpConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'port': ?port,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineAvailabilityGroupListenerReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<VirtualMachineAvailabilityGroupListenerReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlVirtualMachineGroupId': ?sqlVirtualMachineGroupId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerState(
      availabilityGroupName: (() { final guardedValue = map['availabilityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerConfiguration: (() { final guardedValue = map['loadBalancerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiSubnetIpConfigurations: (() { final guardedValue = map['multiSubnetIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>(guardedValue, (value) => VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerReplica>(guardedValue, (value) => VirtualMachineAvailabilityGroupListenerReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sqlVirtualMachineGroupId: (() { final guardedValue = map['sqlVirtualMachineGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

