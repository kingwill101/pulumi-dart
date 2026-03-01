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
  final pulumi.Input<String>? availabilityGroupName;
  /// A `load_balancer_configuration` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either one of `load_balancer_configuration` or `multi_subnet_ip_configuration` must be specified.
  final pulumi.Input<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration>? loadBalancerConfiguration;
  /// One or more `multi_subnet_ip_configuration` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>>? multiSubnetIpConfigurations;
  /// The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The port of the listener. Changing this forces a new resource to be created.
  final pulumi.Input<int>? port;
  /// One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<VirtualMachineAvailabilityGroupListenerReplica>> replicas;
  /// The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  final pulumi.Input<String> sqlVirtualMachineGroupId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerArgs].
  /// [availabilityGroupName] The name of the Availability Group. Changing this forces a new resource to be created.
  /// [loadBalancerConfiguration] A `load_balancer_configuration` block as defined below. Changing this forces a new resource to be created.
  /// [multiSubnetIpConfigurations] One or more `multi_subnet_ip_configuration` blocks as defined below. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Microsoft SQL Virtual Machine Availability Group Listener. Changing this forces a new resource to be created.
  /// [port] The port of the listener. Changing this forces a new resource to be created.
  /// [replicas] One or more `replica` blocks as defined below. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineGroupId] The ID of the SQL Virtual Machine Group to create the listener. Changing this forces a new resource to be created.
  VirtualMachineAvailabilityGroupListenerArgs({
    pulumi.Output<String>? availabilityGroupName,
    pulumi.Output<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration>? loadBalancerConfiguration,
    pulumi.Output<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>>? multiSubnetIpConfigurations,
    pulumi.Output<String>? name,
    pulumi.Output<int>? port,
    required pulumi.Output<List<VirtualMachineAvailabilityGroupListenerReplica>> replicas,
    required pulumi.Output<String> sqlVirtualMachineGroupId,
  }) :
      availabilityGroupName = pulumi.Input.asOptionalInput<String>(availabilityGroupName),
      loadBalancerConfiguration = pulumi.Input.asOptionalInput<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration>(loadBalancerConfiguration),
      multiSubnetIpConfigurations = pulumi.Input.asOptionalInput<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>>(multiSubnetIpConfigurations),
      name = pulumi.Input.asOptionalInput<String>(name),
      port = pulumi.Input.asOptionalInput<int>(port),
      replicas = pulumi.Input.asInput<List<VirtualMachineAvailabilityGroupListenerReplica>>(replicas),
      sqlVirtualMachineGroupId = pulumi.Input.asInput<String>(sqlVirtualMachineGroupId);

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
      availabilityGroupName: map['availabilityGroupName'] == null ? null : pulumi.Output.create<String>(map['availabilityGroupName'] as String),
      loadBalancerConfiguration: map['loadBalancerConfiguration'] == null ? null : pulumi.Output.create<VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration>(VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration.fromMap((map['loadBalancerConfiguration'] as Map).cast<String, dynamic>())),
      multiSubnetIpConfigurations: map['multiSubnetIpConfigurations'] == null ? null : pulumi.Output.create<List<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>>(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration>(map['multiSubnetIpConfigurations'], (value) => VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      replicas: pulumi.Output.create<List<VirtualMachineAvailabilityGroupListenerReplica>>(pulumi.Input.decodeList<VirtualMachineAvailabilityGroupListenerReplica>(map['replicas'], (value) => VirtualMachineAvailabilityGroupListenerReplica.fromMap((value as Map).cast<String, dynamic>()))),
      sqlVirtualMachineGroupId: pulumi.Output.create<String>(map['sqlVirtualMachineGroupId'] as String),
    );
  }
}

