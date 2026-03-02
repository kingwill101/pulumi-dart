// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServiceSiteCredential {
  final pulumi.Input<String> password;
  final pulumi.Input<String> username;

  /// Creates a new [GetAppServiceSiteCredential].
  /// [password] Required.
  /// [username] Required.
  GetAppServiceSiteCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetAppServiceSiteCredential.fromMap(Map<String, dynamic> map) {
    return GetAppServiceSiteCredential(
      password: (map['password'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

