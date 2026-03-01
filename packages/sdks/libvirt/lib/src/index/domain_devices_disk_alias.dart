// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesDiskAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesDiskAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskAlias(
      name: map['name'] as String,
    );
  }
}

