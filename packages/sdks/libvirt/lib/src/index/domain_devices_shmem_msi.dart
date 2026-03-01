// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesShmemMsi {
  /// Enables or disables MSI for the shared memory device, controlling interrupt generation.
  final String? enabled;
  /// Configures the IO event file descriptor for MSI handling in the shared memory device.
  final String? ioEventFd;
  /// Sets the number of IRQ vectors available for the MSI configuration of the shared memory device.
  final double? vectors;

  /// Creates a new [DomainDevicesShmemMsi].
  /// [enabled] Enables or disables MSI for the shared memory device, controlling interrupt generation.
  /// [ioEventFd] Configures the IO event file descriptor for MSI handling in the shared memory device.
  /// [vectors] Sets the number of IRQ vectors available for the MSI configuration of the shared memory device.
  DomainDevicesShmemMsi({
    this.enabled,
    this.ioEventFd,
    this.vectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'ioEventFd': ?ioEventFd,
      'vectors': ?vectors,
    };
  }

  factory DomainDevicesShmemMsi.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemMsi(
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      ioEventFd: map['ioEventFd'] == null ? null : map['ioEventFd'] as String,
      vectors: map['vectors'] == null ? null : map['vectors'] as double,
    );
  }
}

