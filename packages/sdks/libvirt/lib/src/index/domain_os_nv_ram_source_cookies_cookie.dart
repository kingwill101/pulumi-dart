// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceCookiesCookie {
  /// Sets the name of the cookie for use in the backing store source configuration.
  final pulumi.Input<String> name;

  /// Sets the value associated with the cookie defined in the backing store source.
  final pulumi.Input<String> value;

  /// Creates a new [DomainOsNvRamSourceCookiesCookie].
  /// [name] Sets the name of the cookie for use in the backing store source configuration.
  /// [value] Sets the value associated with the cookie defined in the backing store source.
  DomainOsNvRamSourceCookiesCookie({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory DomainOsNvRamSourceCookiesCookie.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceCookiesCookie(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
