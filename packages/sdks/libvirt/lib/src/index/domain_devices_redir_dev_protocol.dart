// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesRedirDevProtocol {
  /// Specifies the type of protocol used for the EGD source backend.
  final String type;

  /// Creates a new [DomainDevicesRedirDevProtocol].
  /// [type] Specifies the type of protocol used for the EGD source backend.
  DomainDevicesRedirDevProtocol({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory DomainDevicesRedirDevProtocol.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirDevProtocol(
      type: map['type'] as String,
    );
  }
}

