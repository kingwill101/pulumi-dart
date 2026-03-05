// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_serial_port_get_instance_serial_port_args_doc}
/// Arguments for getInstanceSerialPort.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_serial_port_get_instance_serial_port_args_doc}
class GetInstanceSerialPortArgs {
  /// The name of the Compute Instance to read output from.
  final pulumi.Input<String> instance;
  /// The number of the serial port to read output from. Possible values are 1-4.
  ///
  /// - - -
  final pulumi.Input<int> port;
  /// The project in which the Compute Instance exists. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone in which the Compute Instance exists.
  /// If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceSerialPortArgs].
  /// [instance] The name of the Compute Instance to read output from.
  /// [port] The number of the serial port to read output from. Possible values are 1-4.
  /// [project] The project in which the Compute Instance exists. If it
  /// [zone] The zone in which the Compute Instance exists.
  GetInstanceSerialPortArgs({
    required this.instance,
    required this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'port': port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetInstanceSerialPortArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceSerialPortArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

