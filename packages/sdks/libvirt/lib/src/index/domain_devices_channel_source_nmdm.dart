// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesChannelSourceNmdm {
  /// Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  final pulumi.Input<String> master;

  /// Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  final pulumi.Input<String> slave;

  /// Creates a new [DomainDevicesChannelSourceNmdm].
  /// [master] Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  /// [slave] Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  DomainDevicesChannelSourceNmdm({required this.master, required this.slave});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'master': master, 'slave': slave};
  }

  factory DomainDevicesChannelSourceNmdm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesChannelSourceNmdm(
      master: pulumi.Input.fromValue(map['master'] as String),
      slave: pulumi.Input.fromValue(map['slave'] as String),
    );
  }
}
