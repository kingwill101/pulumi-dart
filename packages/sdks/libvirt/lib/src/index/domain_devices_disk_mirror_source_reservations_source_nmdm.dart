// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorSourceReservationsSourceNmdm {
  /// Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  final String master;
  /// Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  final String slave;

  /// Creates a new [DomainDevicesDiskMirrorSourceReservationsSourceNmdm].
  /// [master] Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  /// [slave] Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  DomainDevicesDiskMirrorSourceReservationsSourceNmdm({
    required this.master,
    required this.slave,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': master,
      'slave': slave,
    };
  }

  factory DomainDevicesDiskMirrorSourceReservationsSourceNmdm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceReservationsSourceNmdm(
      master: map['master'] as String,
      slave: map['slave'] as String,
    );
  }
}

