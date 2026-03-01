// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceHostdevUsbVendor {
  /// Specifies the unique identifier for the vendor of the USB device.
  final String? id;

  /// Creates a new [DomainDevicesInterfaceSourceHostdevUsbVendor].
  /// [id] Specifies the unique identifier for the vendor of the USB device.
  DomainDevicesInterfaceSourceHostdevUsbVendor({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory DomainDevicesInterfaceSourceHostdevUsbVendor.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceHostdevUsbVendor(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

