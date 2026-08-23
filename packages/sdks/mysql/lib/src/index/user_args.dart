// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// Use an [authentication plugin][ref-auth-plugins] to authenticate the user instead of using password authentication.  Description of the fields allowed in the block below. Conflicts with `password` and `plaintextPassword`.
  final pulumi.Input<String>? authPlugin;
  /// The source host of the user. Defaults to "localhost".
  final pulumi.Input<String>? host;
  /// Deprecated alias of `plaintextPassword`, whose value is *stored as plaintext in state*. Prefer to use `plaintextPassword` instead, which stores the password as an unsalted hash. Conflicts with `authPlugin`.
  final pulumi.Input<String>? password;
  /// The password for the user. This must be provided in plain text, so the data source for it must be secured. An _unsalted_ hash of the provided password is stored in state. Conflicts with `authPlugin`.
  final pulumi.Input<String>? plaintextPassword;
  /// An TLS-Option for the `CREATE USER` or `ALTER USER` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `CREATE USER ... REQUIRE SSL` statement. See the [MYSQL `CREATE USER` documentation](https://dev.mysql.com/doc/refman/5.7/en/create-user.html) for more. Ignored if MySQL version is under 5.7.0.
  ///
  /// [ref-auth-plugins]: https://dev.mysql.com/doc/refman/5.7/en/authentication-plugins.html
  final pulumi.Input<String>? tlsOption;
  /// The name of the user.
  final pulumi.Input<String> user;

  /// Creates a new [UserArgs].
  /// [authPlugin] Use an [authentication plugin][ref-auth-plugins] to authenticate the user instead of using password authentication.  Description of the fields allowed in the block below. Conflicts with `password` and `plaintextPassword`.
  /// [host] The source host of the user. Defaults to "localhost".
  /// [password] Deprecated alias of `plaintextPassword`, whose value is *stored as plaintext in state*. Prefer to use `plaintextPassword` instead, which stores the password as an unsalted hash. Conflicts with `authPlugin`.
  /// [plaintextPassword] The password for the user. This must be provided in plain text, so the data source for it must be secured. An _unsalted_ hash of the provided password is stored in state. Conflicts with `authPlugin`.
  /// [tlsOption] An TLS-Option for the `CREATE USER` or `ALTER USER` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `CREATE USER ... REQUIRE SSL` statement. See the [MYSQL `CREATE USER` documentation](https://dev.mysql.com/doc/refman/5.7/en/create-user.html) for more. Ignored if MySQL version is under 5.7.0.
  /// [user] The name of the user.
  const UserArgs({
    this.authPlugin,
    this.host,
    this.password,
    this.plaintextPassword,
    this.tlsOption,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authPlugin': ?authPlugin,
      'host': ?host,
      'password': ?password,
      'plaintextPassword': ?plaintextPassword,
      'tlsOption': ?tlsOption,
      'user': user,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      authPlugin: (() { final guardedValue = map['authPlugin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plaintextPassword: (() { final guardedValue = map['plaintextPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsOption: (() { final guardedValue = map['tlsOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}
