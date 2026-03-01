// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesMemorydevAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesMemorydevAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesMemorydevAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesMemorydevAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemorydevAlias(
      name: map['name'] as String,
    );
  }
}

