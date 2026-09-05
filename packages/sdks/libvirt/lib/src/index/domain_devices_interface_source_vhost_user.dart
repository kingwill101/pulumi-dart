// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_source_vhost_user_chardev.dart';

class DomainDevicesInterfaceSourceVhostUser {
  /// Defines the source settings for the EGD backend.
  final pulumi.Input<DomainDevicesInterfaceSourceVhostUserChardev?>? chardev;
  /// Indicates the device name for the VHostUser interface.
  final pulumi.Input<String> dev;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUser].
  /// [chardev] Defines the source settings for the EGD backend.
  /// [dev] Indicates the device name for the VHostUser interface.
  const DomainDevicesInterfaceSourceVhostUser({
    this.chardev,
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chardev': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceSourceVhostUserChardev, Map<String, dynamic>>(chardev, (value) => value.toMap()),
      'dev': dev,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUser(
      chardev: (() { final guardedValue = map['chardev']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDevicesInterfaceSourceVhostUserChardev.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
