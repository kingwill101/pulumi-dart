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
  SerialPortArgs({
    required pulumi.Output<String> parentResource,
    required pulumi.Output<String> parentResourceType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceProviderNamespace,
    pulumi.Output<String>? serialPort,
    pulumi.Output<SerialPortState>? state,
  }) :
      parentResource = pulumi.Input.asInput<String>(parentResource),
      parentResourceType = pulumi.Input.asInput<String>(parentResourceType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceProviderNamespace = pulumi.Input.asInput<String>(resourceProviderNamespace),
      serialPort = pulumi.Input.asOptionalInput<String>(serialPort),
      state = pulumi.Input.asOptionalInput<SerialPortState>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parentResource': parentResource,
      'parentResourceType': parentResourceType,
      'resourceGroupName': resourceGroupName,
      'resourceProviderNamespace': resourceProviderNamespace,
      'serialPort': ?serialPort,
      'state': ?pulumi.Input.mapOptionalInputValue<SerialPortState, String>(state, (value) => value.value),
    };
  }

  factory SerialPortArgs.fromMap(Map<String, dynamic> map) {
    return SerialPortArgs(
      parentResource: pulumi.Output.create<String>(map['parentResource'] as String),
      parentResourceType: pulumi.Output.create<String>(map['parentResourceType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceProviderNamespace: pulumi.Output.create<String>(map['resourceProviderNamespace'] as String),
      serialPort: map['serialPort'] == null ? null : pulumi.Output.create<String>(map['serialPort'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<SerialPortState>(SerialPortState.fromValue(map['state'] as String)),
    );
  }
}

