// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevSourceNmdm {
  /// Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  final String master;
  /// Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  final String slave;

  /// Creates a new [DomainDevicesRedirDevSourceNmdm].
  /// [master] Specifies the master device in a master-slave NMDM configuration for the EGD backend.
  /// [slave] Specifies the slave device in a master-slave NMDM configuration for the EGD backend.
  DomainDevicesRedirDevSourceNmdm({
    required this.master,
    required this.slave,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'master': master,
      'slave': slave,
    };
  }

  factory DomainDevicesRedirDevSourceNmdm.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevSourceNmdm(
      master: map['master'] as String,
      slave: map['slave'] as String,
    );
  }
}

