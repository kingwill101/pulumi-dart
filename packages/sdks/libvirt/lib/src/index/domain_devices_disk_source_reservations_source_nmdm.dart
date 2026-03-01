// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskSourceReservationsSourceNmdm {
  /// Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  final String master;
  /// Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  final String slave;

  /// Creates a new [DomainDevicesDiskSourceReservationsSourceNmdm].
  /// [master] Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  /// [slave] Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  DomainDevicesDiskSourceReservationsSourceNmdm({
    required this.master,
    required this.slave,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': master,
      'slave': slave,
    };
  }

  factory DomainDevicesDiskSourceReservationsSourceNmdm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceReservationsSourceNmdm(
      master: map['master'] as String,
      slave: map['slave'] as String,
    );
  }
}

