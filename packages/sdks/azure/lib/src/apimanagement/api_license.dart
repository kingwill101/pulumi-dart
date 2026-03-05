// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiLicense {
  /// The name of the license .
  final pulumi.Input<String>? name;
  /// Absolute URL of the license.
  final pulumi.Input<String>? url;

  /// Creates a new [ApiLicense].
  /// [name] The name of the license .
  /// [url] Absolute URL of the license.
  ApiLicense({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory ApiLicense.fromMap(Map<String, dynamic> map) {
    return ApiLicense(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

