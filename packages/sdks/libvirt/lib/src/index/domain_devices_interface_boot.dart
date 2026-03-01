// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceBoot {
  /// Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  final String? loadParm;
  /// Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  final double order;

  /// Creates a new [DomainDevicesInterfaceBoot].
  /// [loadParm] Sets the load parameter for the booting process of the redirected device, influencing how it is activated.
  /// [order] Specifies the boot order for the redirected device, controlling the sequence of device initialization.
  DomainDevicesInterfaceBoot({
    this.loadParm,
    required this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadParm': ?loadParm,
      'order': order,
    };
  }

  factory DomainDevicesInterfaceBoot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBoot(
      loadParm: map['loadParm'] == null ? null : map['loadParm'] as String,
      order: map['order'] as double,
    );
  }
}

