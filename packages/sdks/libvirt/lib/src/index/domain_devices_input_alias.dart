// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInputAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesInputAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesInputAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesInputAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputAlias(
      name: map['name'] as String,
    );
  }
}

