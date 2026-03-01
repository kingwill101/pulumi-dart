// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHubAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesHubAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesHubAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesHubAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHubAlias(
      name: map['name'] as String,
    );
  }
}

