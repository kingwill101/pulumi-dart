// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskTarget {
  /// Sets the bus type for the disk device target, determining how it connects to the guest.
  final String? bus;
  /// Specifies the target device name for the disk device within the guest.
  final String? dev;
  /// Indicates whether the disk device is removable within the guest.
  final String? removable;
  /// Sets the rotational speed for the disk device, affecting its performance characteristics.
  final double? rotationRate;
  /// Configures the tray setting for the disk device, indicating whether the tray is open or closed.
  final String? tray;

  /// Creates a new [DomainDevicesDiskTarget].
  /// [bus] Sets the bus type for the disk device target, determining how it connects to the guest.
  /// [dev] Specifies the target device name for the disk device within the guest.
  /// [removable] Indicates whether the disk device is removable within the guest.
  /// [rotationRate] Sets the rotational speed for the disk device, affecting its performance characteristics.
  /// [tray] Configures the tray setting for the disk device, indicating whether the tray is open or closed.
  DomainDevicesDiskTarget({
    this.bus,
    this.dev,
    this.removable,
    this.rotationRate,
    this.tray,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bus': ?bus,
      'dev': ?dev,
      'removable': ?removable,
      'rotationRate': ?rotationRate,
      'tray': ?tray,
    };
  }

  factory DomainDevicesDiskTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskTarget(
      bus: map['bus'] == null ? null : map['bus'] as String,
      dev: map['dev'] == null ? null : map['dev'] as String,
      removable: map['removable'] == null ? null : map['removable'] as String,
      rotationRate: map['rotationRate'] == null ? null : map['rotationRate'] as double,
      tray: map['tray'] == null ? null : map['tray'] as String,
    );
  }
}

