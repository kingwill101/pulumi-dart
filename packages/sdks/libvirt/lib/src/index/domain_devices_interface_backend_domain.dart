// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceBackendDomain {
  /// Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  final String name;

  /// Creates a new [DomainDevicesInterfaceBackendDomain].
  /// [name] Sets the name of the backend domain associated with the interface, which links the interface to a specific backend configuration.
  DomainDevicesInterfaceBackendDomain({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesInterfaceBackendDomain.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceBackendDomain(
      name: map['name'] as String,
    );
  }
}

