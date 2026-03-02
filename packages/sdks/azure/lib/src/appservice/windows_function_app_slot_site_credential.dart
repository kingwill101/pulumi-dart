// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppSlotSiteCredential {
  /// The Site Credentials Username used for publishing.
  final pulumi.Input<String>? name;
  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String>? password;

  /// Creates a new [WindowsFunctionAppSlotSiteCredential].
  /// [name] The Site Credentials Username used for publishing.
  /// [password] The Site Credentials Password used for publishing.
  WindowsFunctionAppSlotSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory WindowsFunctionAppSlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotSiteCredential(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
    );
  }
}

