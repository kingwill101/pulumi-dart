// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceInternal {
  /// Sets the name of the internal network interface.
  final String? name;

  /// Creates a new [DomainDevicesInterfaceSourceInternal].
  /// [name] Sets the name of the internal network interface.
  DomainDevicesInterfaceSourceInternal({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DomainDevicesInterfaceSourceInternal.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceInternal(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

