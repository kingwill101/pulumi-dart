// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBoot {
  /// Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  final String? loadParm;
  /// Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  final double order;

  /// Creates a new [DomainDevicesDiskBoot].
  /// [loadParm] Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  /// [order] Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  DomainDevicesDiskBoot({
    this.loadParm,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadParm': ?loadParm,
      'order': order,
    };
  }

  factory DomainDevicesDiskBoot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBoot(
      loadParm: map['loadParm'] == null ? null : map['loadParm'] as String,
      order: map['order'] as double,
    );
  }
}

