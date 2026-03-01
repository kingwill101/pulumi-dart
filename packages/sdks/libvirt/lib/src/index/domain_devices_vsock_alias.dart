// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesVsockAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesVsockAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesVsockAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesVsockAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesVsockAlias(
      name: map['name'] as String,
    );
  }
}

