// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSmartcardProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final String type;

  /// Creates a new [DomainDevicesSmartcardProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesSmartcardProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesSmartcardProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSmartcardProtocol(
      type: map['type'] as String,
    );
  }
}

