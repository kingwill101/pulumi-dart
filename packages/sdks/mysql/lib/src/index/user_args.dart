// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// Use an [authentication plugin][ref-auth-plugins] to authenticate the user instead of using password authentication.  Description of the fields allowed in the block below. Conflicts with `password` and `plaintext_password`.
  final pulumi.Input<String>? authPlugin;
  /// The source host of the user. Defaults to "localhost".
  final pulumi.Input<String>? host;
  /// Deprecated alias of `plaintext_password`, whose value is *stored as plaintext in state*. Prefer to use `plaintext_password` instead, which stores the password as an unsalted hash. Conflicts with `auth_plugin`.
  final pulumi.Input<String>? password;
  /// The password for the user. This must be provided in plain text, so the data source for it must be secured. An _unsalted_ hash of the provided password is stored in state. Conflicts with `auth_plugin`.
  final pulumi.Input<String>? plaintextPassword;
  /// An TLS-Option for the `CREATE USER` or `ALTER USER` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `CREATE USER ... REQUIRE SSL` statement. See the [MYSQL `CREATE USER` documentation](https://dev.mysql.com/doc/refman/5.7/en/create-user.html) for more. Ignored if MySQL version is under 5.7.0.
  ///
  /// [ref-auth-plugins]: https://dev.mysql.com/doc/refman/5.7/en/authentication-plugins.html
  final pulumi.Input<String>? tlsOption;
  /// The name of the user.
  final pulumi.Input<String> user;

  /// Creates a new [UserArgs].
  /// [authPlugin] Use an [authentication plugin][ref-auth-plugins] to authenticate the user instead of using password authentication.  Description of the fields allowed in the block below. Conflicts with `password` and `plaintext_password`.
  /// [host] The source host of the user. Defaults to "localhost".
  /// [password] Deprecated alias of `plaintext_password`, whose value is *stored as plaintext in state*. Prefer to use `plaintext_password` instead, which stores the password as an unsalted hash. Conflicts with `auth_plugin`.
  /// [plaintextPassword] The password for the user. This must be provided in plain text, so the data source for it must be secured. An _unsalted_ hash of the provided password is stored in state. Conflicts with `auth_plugin`.
  /// [tlsOption] An TLS-Option for the `CREATE USER` or `ALTER USER` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `CREATE USER ... REQUIRE SSL` statement. See the [MYSQL `CREATE USER` documentation](https://dev.mysql.com/doc/refman/5.7/en/create-user.html) for more. Ignored if MySQL version is under 5.7.0.
  /// [user] The name of the user.
  UserArgs({
    pulumi.Output<String>? authPlugin,
    pulumi.Output<String>? host,
    pulumi.Output<String>? password,
    pulumi.Output<String>? plaintextPassword,
    pulumi.Output<String>? tlsOption,
    required pulumi.Output<String> user,
  }) :
      authPlugin = pulumi.Input.asOptionalInput<String>(authPlugin),
      host = pulumi.Input.asOptionalInput<String>(host),
      password = pulumi.Input.asOptionalInput<String>(password),
      plaintextPassword = pulumi.Input.asOptionalInput<String>(plaintextPassword),
      tlsOption = pulumi.Input.asOptionalInput<String>(tlsOption),
      user = pulumi.Input.asInput<String>(user);

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
      authPlugin: map['authPlugin'] == null ? null : pulumi.Output.create<String>(map['authPlugin'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      plaintextPassword: map['plaintextPassword'] == null ? null : pulumi.Output.create<String>(map['plaintextPassword'] as String),
      tlsOption: map['tlsOption'] == null ? null : pulumi.Output.create<String>(map['tlsOption'] as String),
      user: pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

