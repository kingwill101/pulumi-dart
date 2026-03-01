// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesShmemAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesShmemAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesShmemAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesShmemAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemAlias(
      name: map['name'] as String,
    );
  }
}

