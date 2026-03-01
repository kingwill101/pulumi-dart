// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceUser {
  /// Sets the device identifier for the user-managed network connection.
  final String? dev;

  /// Creates a new [DomainDevicesInterfaceSourceUser].
  /// [dev] Sets the device identifier for the user-managed network connection.
  DomainDevicesInterfaceSourceUser({
    this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': ?dev,
    };
  }

  factory DomainDevicesInterfaceSourceUser.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUser(
      dev: map['dev'] == null ? null : map['dev'] as String,
    );
  }
}

