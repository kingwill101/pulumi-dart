// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesControllerNvme {
  /// Sets the serial number for the NVMe controller device.
  final String? serial;

  /// Creates a new [DomainDevicesControllerNvme].
  /// [serial] Sets the serial number for the NVMe controller device.
  DomainDevicesControllerNvme({
    this.serial,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serial': ?serial,
    };
  }

  factory DomainDevicesControllerNvme.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerNvme(
      serial: map['serial'] == null ? null : map['serial'] as String,
    );
  }
}

