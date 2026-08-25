// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterInitialUser {
  /// The initial password for the user.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The initial password for the user.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `password` or `passwordWo` can only be set.
  final pulumi.Input<String?>? passwordWo;
  /// Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? passwordWoVersion;
  /// The database username.
  final pulumi.Input<String?>? user;

  /// Creates a new [ClusterInitialUser].
  /// [password] The initial password for the user.
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Triggers update of `passwordWo` write-only. Increment this value when an update to `passwordWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [user] The database username.
  const ClusterInitialUser({
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'user': ?user,
    };
  }

  factory ClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return ClusterInitialUser(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
