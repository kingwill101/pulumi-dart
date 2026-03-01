// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cm_device_device_args_doc}
/// The set of arguments for Device.
/// {@endtemplate}
/// {@macro pulumi_cm_device_device_args_doc}
class DeviceArgs {
  /// IP address used for config sync
  final pulumi.Input<String> configsyncIp;
  /// IP address used for state mirroring
  final pulumi.Input<String>? mirrorIp;
  /// Secondary IP address used for state mirroring
  final pulumi.Input<String>? mirrorSecondaryIp;
  /// Address of the Device which needs to be Deviceensed
  final pulumi.Input<String> name;

  /// Creates a new [DeviceArgs].
  /// [configsyncIp] IP address used for config sync
  /// [mirrorIp] IP address used for state mirroring
  /// [mirrorSecondaryIp] Secondary IP address used for state mirroring
  /// [name] Address of the Device which needs to be Deviceensed
  DeviceArgs({
    required pulumi.Output<String> configsyncIp,
    pulumi.Output<String>? mirrorIp,
    pulumi.Output<String>? mirrorSecondaryIp,
    required pulumi.Output<String> name,
  }) :
      configsyncIp = pulumi.Input.asInput<String>(configsyncIp),
      mirrorIp = pulumi.Input.asOptionalInput<String>(mirrorIp),
      mirrorSecondaryIp = pulumi.Input.asOptionalInput<String>(mirrorSecondaryIp),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configsyncIp': configsyncIp,
      'mirrorIp': ?mirrorIp,
      'mirrorSecondaryIp': ?mirrorSecondaryIp,
      'name': name,
    };
  }

  factory DeviceArgs.fromMap(Map<String, dynamic> map) {
    return DeviceArgs(
      configsyncIp: pulumi.Output.create<String>(map['configsyncIp'] as String),
      mirrorIp: map['mirrorIp'] == null ? null : pulumi.Output.create<String>(map['mirrorIp'] as String),
      mirrorSecondaryIp: map['mirrorSecondaryIp'] == null ? null : pulumi.Output.create<String>(map['mirrorSecondaryIp'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

