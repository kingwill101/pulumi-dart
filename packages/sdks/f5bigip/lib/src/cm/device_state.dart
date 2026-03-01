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
    pulumi.Output<String>? configsyncIp,
    pulumi.Output<String>? mirrorIp,
    pulumi.Output<String>? mirrorSecondaryIp,
    pulumi.Output<String>? name,
  }) :
      configsyncIp = pulumi.Input.asOptionalInput<String>(configsyncIp),
      mirrorIp = pulumi.Input.asOptionalInput<String>(mirrorIp),
      mirrorSecondaryIp = pulumi.Input.asOptionalInput<String>(mirrorSecondaryIp),
      name = pulumi.Input.asOptionalInput<String>(name);

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
      configsyncIp: map['configsyncIp'] == null ? null : pulumi.Output.create<String>(map['configsyncIp'] as String),
      mirrorIp: map['mirrorIp'] == null ? null : pulumi.Output.create<String>(map['mirrorIp'] as String),
      mirrorSecondaryIp: map['mirrorSecondaryIp'] == null ? null : pulumi.Output.create<String>(map['mirrorSecondaryIp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

