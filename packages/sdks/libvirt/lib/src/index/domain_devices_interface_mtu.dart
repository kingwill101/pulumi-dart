// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceMtu {
  /// Sets the specific MTU size for network communication.
  final double size;

  /// Creates a new [DomainDevicesInterfaceMtu].
  /// [size] Sets the specific MTU size for network communication.
  DomainDevicesInterfaceMtu({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory DomainDevicesInterfaceMtu.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceMtu(
      size: map['size'] as double,
    );
  }
}

