// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSerialProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final String type;

  /// Creates a new [DomainDevicesSerialProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesSerialProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesSerialProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSerialProtocol(
      type: map['type'] as String,
    );
  }
}

