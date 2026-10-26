// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionCloudSqlCredential {
  /// Password for database.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Password for database.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `password` or `passwordWo` can only be set.
  final pulumi.Input<String?>? passwordWo;
  /// Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? passwordWoVersion;
  /// Username for database.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionCloudSqlCredential].
  /// [password] Password for database.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [username] Username for database.
  const ConnectionCloudSqlCredential({
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

  factory ConnectionCloudSqlCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSqlCredential(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
