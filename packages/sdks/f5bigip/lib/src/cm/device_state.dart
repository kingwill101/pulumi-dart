// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Device resources.
class DeviceState {
  /// IP address used for config sync
  final pulumi.Input<String>? configsyncIp;
  /// IP address used for state mirroring
  final pulumi.Input<String>? mirrorIp;
  /// Secondary IP address used for state mirroring
  final pulumi.Input<String>? mirrorSecondaryIp;
  /// Address of the Device which needs to be Deviceensed
  final pulumi.Input<String>? name;

  /// Creates a new [DeviceState].
  /// [configsyncIp] IP address used for config sync
  /// [mirrorIp] IP address used for state mirroring
  /// [mirrorSecondaryIp] Secondary IP address used for state mirroring
  /// [name] Address of the Device which needs to be Deviceensed
  DeviceState({
    this.configsyncIp,
    this.mirrorIp,
    this.mirrorSecondaryIp,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configsyncIp': ?configsyncIp,
      'mirrorIp': ?mirrorIp,
      'mirrorSecondaryIp': ?mirrorSecondaryIp,
      'name': ?name,
    };
  }

  factory DeviceState.fromMap(Map<String, dynamic> map) {
    return DeviceState(
      configsyncIp: (() { final guardedValue = map['configsyncIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorIp: (() { final guardedValue = map['mirrorIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorSecondaryIp: (() { final guardedValue = map['mirrorSecondaryIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

