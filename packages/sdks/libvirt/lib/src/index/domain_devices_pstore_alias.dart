// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesPstoreAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesPstoreAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesPstoreAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesPstoreAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesPstoreAlias(
      name: map['name'] as String,
    );
  }
}

