// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackendDomain {
  /// Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  final String name;

  /// Creates a new [DomainDevicesDiskBackendDomain].
  /// [name] Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  DomainDevicesDiskBackendDomain({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskBackendDomain.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackendDomain(
      name: map['name'] as String,
    );
  }
}

