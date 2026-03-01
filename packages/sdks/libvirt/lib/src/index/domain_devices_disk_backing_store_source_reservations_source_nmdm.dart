// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceReservationsSourceNmdm {
  /// Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  final String master;
  /// Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  final String slave;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceReservationsSourceNmdm].
  /// [master] Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  /// [slave] Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  DomainDevicesDiskBackingStoreSourceReservationsSourceNmdm({
    required this.master,
    required this.slave,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': master,
      'slave': slave,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceReservationsSourceNmdm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceReservationsSourceNmdm(
      master: map['master'] as String,
      slave: map['slave'] as String,
    );
  }
}

