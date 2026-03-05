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
    required this.configsyncIp,
    this.mirrorIp,
    this.mirrorSecondaryIp,
    required this.name,
  });

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
      configsyncIp: pulumi.Input.fromValue(map['configsyncIp'] as String),
      mirrorIp: (() { final guardedValue = map['mirrorIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorSecondaryIp: (() { final guardedValue = map['mirrorSecondaryIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

