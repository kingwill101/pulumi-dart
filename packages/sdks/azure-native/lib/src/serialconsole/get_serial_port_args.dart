// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serialconsole_get_serial_port_args_doc}
/// Arguments for getSerialPort.
/// {@endtemplate}
/// {@macro pulumi_serialconsole_get_serial_port_args_doc}
class GetSerialPortArgs {
  /// The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  final pulumi.Input<String> parentResource;
  /// The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  final pulumi.Input<String> parentResourceType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The name of the serial port to connect to.
  final pulumi.Input<String> serialPort;

  /// Creates a new [GetSerialPortArgs].
  /// [parentResource] The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  /// [parentResourceType] The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  /// [resourceGroupName] The name of the resource group.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [serialPort] The name of the serial port to connect to.
  GetSerialPortArgs({
    required this.parentResource,
    required this.parentResourceType,
    required this.resourceGroupName,
    required this.resourceProviderNamespace,
    required this.serialPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentResource': parentResource,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'serialPort': serialPort,
    };
  }

  factory GetSerialPortArgs.fromMap(Map<String, dynamic> map) {
    return GetSerialPortArgs(
      parentResource: pulumi.Input.fromValue(map['parentResource'] as String),
      parentResourceType: pulumi.Input.fromValue(map['parentResourceType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceProviderNamespace: pulumi.Input.fromValue(map['resourceProviderNamespace'] as String),
      serialPort: pulumi.Input.fromValue(map['serialPort'] as String),
    );
  }
}

