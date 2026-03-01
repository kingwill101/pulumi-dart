// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceCookiesCookie {
  /// Sets the name of the cookie for use in the backing store source configuration.
  final String name;
  /// Sets the value associated with the cookie defined in the backing store source.
  final String value;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceCookiesCookie].
  /// [name] Sets the name of the cookie for use in the backing store source configuration.
  /// [value] Sets the value associated with the cookie defined in the backing store source.
  DomainDevicesDiskBackingStoreSourceCookiesCookie({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceCookiesCookie.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceCookiesCookie(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

