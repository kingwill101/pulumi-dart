// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_availability_group_listener_load_balancer_configuration.dart';
import 'virtual_machine_availability_group_listener_multi_subnet_ip_configuration.dart';
import 'virtual_machine_availability_group_listener_replica.dart';

/// {@template pulumi_mssql_virtual_machine_availability_group_listener_virtual_machine_availability_group_listener_args_doc}
/// The set of arguments for VirtualMachineAvailabilityGroupListener.
/// {@endtemplate}
/// {@macro pulumi_mssql_virtual_machine_availability_group_listener_virtual_machine_availability_group_listener_args_doc}
class VirtualMachineAvailabilityGroupListenerArgs {
  /// The name of the Availability Group. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? availabilityGroupName;
  /// A `loadBalancerConfiguration` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Either one of `loadBalancerConfiguration` or `multiSubnetIpConfiguration` must be specified.
  final pulumi.Input<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration?>? loadBalancerConfiguration;
  /// One or more `multiSubnetIpConfiguration` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>?>? multiSubnetIpConfigurations;
  /// The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The port of the listener. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? port;
  /// One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerReplica>> replicas;
  /// The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlVirtualMachineGroupId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerArgs].
  /// [availabilityGroupName] The name of the Availability Group. Changing this forces a new resource to be created.
  /// [loadBalancerConfiguration] A `loadBalancerConfiguration` block as defined below. Changing this forces a new resource to be created.
  /// [multiSubnetIpConfigurations] One or more `multiSubnetIpConfiguration` blocks as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  /// [port] The port of the listener. Changing this forces a new resource to be created.
  /// [replicas] One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineGroupId] The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  const VirtualMachineAvailabilityGroupListenerArgs({
    this.availabilityGroupName,
    this.loadBalancerConfiguration,
    this.multiSubnetIpConfigurations,
    this.name,
    this.port,
    required this.replicas,
    required this.sqlVirtualMachineGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityGroupName': ?availabilityGroupName,
      'loadBalancerConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration, Map<String, dynamic>>(loadBalancerConfiguration, (value) => value.toMap()),
      'multiSubnetIpConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>, List<Map<String, dynamic>>>(multiSubnetIpConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'port': ?port,
      'replicas': pulumi.Input.mapInputValue<List<VirtualMachineAvailabilityGroupListenerReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<VirtualMachineAvailabilityGroupListenerReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlVirtualMachineGroupId': sqlVirtualMachineGroupId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerArgs(
      availabilityGroupName: (() { final guardedValue = map['availabilityGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerConfiguration: (() { final guardedValue = map['loadBalancerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiSubnetIpConfigurations: (() { final guardedValue = map['multiSubnetIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>(guardedValue, (value) => VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      replicas: pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerReplica>(map['replicas']!, (value) => VirtualMachineAvailabilityGroupListenerReplica.fromMap((value as Map).cast<String, dynamic>()))),
      sqlVirtualMachineGroupId: pulumi.Input.fromValue(map['sqlVirtualMachineGroupId'] as String),
    );
  }
}
