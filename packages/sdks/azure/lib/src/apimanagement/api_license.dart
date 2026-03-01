// ignore_for_file: unused_element, unnecessary_cast


class ApiLicense {
  /// The name of the license .
  final String? name;
  /// Absolute URL of the license.
  final String? url;

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
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

