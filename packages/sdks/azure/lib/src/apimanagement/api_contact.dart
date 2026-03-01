// ignore_for_file: unused_element, unnecessary_cast


class ApiContact {
  /// The email address of the contact person/organization.
  final String? email;
  /// The name of the contact person/organization.
  final String? name;
  /// Absolute URL of the contact information.
  final String? url;

  /// Creates a new [ApiContact].
  /// [email] The email address of the contact person/organization.
  /// [name] The name of the contact person/organization.
  /// [url] Absolute URL of the contact information.
  ApiContact({
    this.email,
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'name': ?name,
      'url': ?url,
    };
  }

  factory ApiContact.fromMap(Map<String, dynamic> map) {
    return ApiContact(
      email: map['email'] == null ? null : map['email'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

