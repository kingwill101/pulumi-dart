// ignore_for_file: unused_element, unnecessary_cast

import 'domain_devices_interface_source_vhost_user_chardev.dart';

class DomainDevicesInterfaceSourceVhostUser {
  /// Defines the source settings for the EGD backend.
  final DomainDevicesInterfaceSourceVhostUserChardev? chardev;
  /// Indicates the device name for the VHostUser interface.
  final String dev;

  /// Creates a new [DomainDevicesInterfaceSourceVhostUser].
  /// [chardev] Defines the source settings for the EGD backend.
  /// [dev] Indicates the device name for the VHostUser interface.
  DomainDevicesInterfaceSourceVhostUser({
    this.chardev,
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chardev': ?chardev == null ? null : chardev!.toMap(),
      'dev': dev,
    };
  }

  factory DomainDevicesInterfaceSourceVhostUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceVhostUser(
      chardev: map['chardev'] == null ? null : DomainDevicesInterfaceSourceVhostUserChardev.fromMap((map['chardev'] as Map).cast<String, dynamic>()),
      dev: map['dev'] as String,
    );
  }
}

