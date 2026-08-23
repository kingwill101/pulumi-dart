// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppSiteCredential {
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// The Site Credentials Password used for publishing.
  final pulumi.Input<String> password;

  /// Creates a new [GetLinuxWebAppSiteCredential].
  /// [name] The name of this Linux Web App.
  /// [password] The Site Credentials Password used for publishing.
  const GetLinuxWebAppSiteCredential({
    required this.name,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'password': password,
    };
  }

  factory GetLinuxWebAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppSiteCredential(
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
    );
  }
}
