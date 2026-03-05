// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UptimeCheckConfigHttpCheckAuthInfo {
  /// The password to authenticate.
  final pulumi.Input<String>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// The password to authenticate.
  final pulumi.Input<String>? passwordWo;
  /// The password write-only version.
  final pulumi.Input<String>? passwordWoVersion;
  /// The username to authenticate.
  final pulumi.Input<String> username;

  /// Creates a new [UptimeCheckConfigHttpCheckAuthInfo].
  /// [password] The password to authenticate.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] The password write-only version.
  /// [username] The username to authenticate.
  UptimeCheckConfigHttpCheckAuthInfo({
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'username': username,
    };
  }

  factory UptimeCheckConfigHttpCheckAuthInfo.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigHttpCheckAuthInfo(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

