// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesIommuAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesIommuAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesIommuAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesIommuAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesIommuAlias(
      name: map['name'] as String,
    );
  }
}

