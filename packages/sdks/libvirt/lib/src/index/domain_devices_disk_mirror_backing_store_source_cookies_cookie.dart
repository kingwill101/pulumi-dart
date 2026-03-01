// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie {
  /// Sets the name of the cookie for use in the backing store source configuration.
  final String name;
  /// Sets the value associated with the cookie defined in the backing store source.
  final String value;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie].
  /// [name] Sets the name of the cookie for use in the backing store source configuration.
  /// [value] Sets the value associated with the cookie defined in the backing store source.
  DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceCookiesCookie(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

