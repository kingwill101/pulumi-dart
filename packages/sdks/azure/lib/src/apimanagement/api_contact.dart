// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiContact {
  /// The email address of the contact person/organization.
  final pulumi.Input<String>? email;
  /// The name of the contact person/organization.
  final pulumi.Input<String>? name;
  /// Absolute URL of the contact information.
  final pulumi.Input<String>? url;

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
      email: map['email'] == null ? null : (map['email'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

