// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serial_port_state.dart';

/// {@template pulumi_serialconsole_serial_port_args_doc}
/// The set of arguments for SerialPort.
/// {@endtemplate}
/// {@macro pulumi_serialconsole_serial_port_args_doc}
class SerialPortArgs {
  /// The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  final pulumi.Input<String> parentResource;
  /// The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  final pulumi.Input<String> parentResourceType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The namespace of the resource provider.
  final pulumi.Input<String> resourceProviderNamespace;
  /// The name of the serial port to create.
  final pulumi.Input<String>? serialPort;
  /// Specifies whether the port is enabled for a serial console connection.
  final pulumi.Input<SerialPortState>? state;

  /// Creates a new [SerialPortArgs].
  /// [parentResource] The resource name, or subordinate path, for the parent of the serial port. For example: the name of the virtual machine.
  /// [parentResourceType] The resource type of the parent resource.  For example: 'virtualMachines' or 'virtualMachineScaleSets'
  /// [resourceGroupName] The name of the resource group.
  /// [resourceProviderNamespace] The namespace of the resource provider.
  /// [serialPort] The name of the serial port to create.
  /// [state] Specifies whether the port is enabled for a serial console connection.
  const SerialPortArgs({
    required this.parentResource,
    required this.parentResourceType,
    required this.resourceGroupName,
    required this.resourceProviderNamespace,
    this.serialPort,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentResource': parentResource,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'serialPort': ?serialPort,
      'state': ?pulumi.Input.mapOptionalInputValue<SerialPortState, String>(state, (value) => value.wireValue),
    };
  }

  factory SerialPortArgs.fromMap(Map<String, dynamic> map) {
    return SerialPortArgs(
      parentResource: pulumi.Input.fromValue(map['parentResource'] as String),
      parentResourceType: pulumi.Input.fromValue(map['parentResourceType'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceProviderNamespace: pulumi.Input.fromValue(map['resourceProviderNamespace'] as String),
      serialPort: (() { final guardedValue = map['serialPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SerialPortState.fromValue(guardedValue as String)); })(),
    );
  }
}

