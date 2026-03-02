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
      instance: (map['instance'] as String).input(),
      port: (map['port'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

