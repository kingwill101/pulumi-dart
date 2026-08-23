// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterInitialUser {
  /// The initial password for the user.
  final pulumi.Input<String> password;
  /// The initial password for the user.
  final pulumi.Input<String> passwordWo;
  /// Triggers update of 'password_wo' write-only. Increment this value when an update to 'password_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> passwordWoVersion;
  /// The database username.
  final pulumi.Input<String> user;

  /// Creates a new [GetClusterInitialUser].
  /// [password] The initial password for the user.
  /// [passwordWo] The initial password for the user.
  /// [passwordWoVersion] Triggers update of 'password_wo' write-only. Increment this value when an update to 'password_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [user] The database username.
  const GetClusterInitialUser({
    required this.password,
    required this.passwordWo,
    required this.passwordWoVersion,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'passwordWo': passwordWo,
      'passwordWoVersion': passwordWoVersion,
      'user': user,
    };
  }

  factory GetClusterInitialUser.fromMap(Map<String, dynamic> map) {
    return GetClusterInitialUser(
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordWo: pulumi.Input.fromValue(map['passwordWo'] as String),
      passwordWoVersion: pulumi.Input.fromValue(map['passwordWoVersion'] as String),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
