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
      configsyncIp: map['configsyncIp'] == null ? null : (map['configsyncIp']! as String).input(),
      mirrorIp: map['mirrorIp'] == null ? null : (map['mirrorIp']! as String).input(),
      mirrorSecondaryIp: map['mirrorSecondaryIp'] == null ? null : (map['mirrorSecondaryIp']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

