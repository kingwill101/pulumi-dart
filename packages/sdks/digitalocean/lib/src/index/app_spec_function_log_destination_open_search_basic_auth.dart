// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecFunctionLogDestinationOpenSearchBasicAuth {
  /// Password for basic authentication.
  final pulumi.Input<String>? password;
  /// user for basic authentication.
  final pulumi.Input<String>? user;

  /// Creates a new [AppSpecFunctionLogDestinationOpenSearchBasicAuth].
  /// [password] Password for basic authentication.
  /// [user] user for basic authentication.
  AppSpecFunctionLogDestinationOpenSearchBasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'user': ?user,
    };
  }

  factory AppSpecFunctionLogDestinationOpenSearchBasicAuth.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationOpenSearchBasicAuth(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

