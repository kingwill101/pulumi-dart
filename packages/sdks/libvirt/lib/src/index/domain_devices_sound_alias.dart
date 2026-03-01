// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesSoundAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesSoundAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesSoundAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesSoundAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesSoundAlias(
      name: map['name'] as String,
    );
  }
}

