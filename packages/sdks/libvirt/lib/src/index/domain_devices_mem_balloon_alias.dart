// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesMemBalloonAlias {
  /// Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  final String name;

  /// Creates a new [DomainDevicesMemBalloonAlias].
  /// [name] Sets the name of the alias for the persistent storage device, used for reference in management tasks.
  DomainDevicesMemBalloonAlias({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesMemBalloonAlias.fromMap(Map<String, dynamic> map) {
    return DomainDevicesMemBalloonAlias(
      name: map['name'] as String,
    );
  }
}

