// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesNvramAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesNvramAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesNvramAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesNvramAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesNvramAlias(
      name: map['name'] as String,
    );
  }
}

