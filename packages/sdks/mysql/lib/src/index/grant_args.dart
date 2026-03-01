// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_grant_grant_args_doc}
/// The set of arguments for Grant.
/// {@endtemplate}
/// {@macro pulumi_index_grant_grant_args_doc}
class GrantArgs {
  /// The database to grant privileges on.
  final pulumi.Input<String> database;
  /// Whether to also give the user privileges to grant the same privileges to other users.
  final pulumi.Input<bool>? grant;
  /// The source host of the user. Defaults to "localhost". Conflicts with `role`.
  final pulumi.Input<String>? host;
  /// A list of privileges to grant to the user. Refer to a list of privileges (such as [here](https://dev.mysql.com/doc/refman/5.5/en/grant.html)) for applicable privileges. Conflicts with `roles`.
  final pulumi.Input<List<String>>? privileges;
  /// The role to grant `privileges` to. Conflicts with `user` and `host`.
  final pulumi.Input<String>? role;
  /// A list of rols to grant to the user. Conflicts with `privileges`.
  final pulumi.Input<List<String>>? roles;
  /// Which table to grant `privileges` on. Defaults to `*`, which is all tables.
  final pulumi.Input<String>? table;
  /// An TLS-Option for the `GRANT` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `GRANT ... REQUIRE SSL` statement. See the [MYSQL `GRANT` documentation](https://dev.mysql.com/doc/refman/5.7/en/grant.html) for more. Ignored if MySQL version is under 5.7.0.
  final pulumi.Input<String>? tlsOption;
  /// The name of the user. Conflicts with `role`.
  final pulumi.Input<String>? user;

  /// Creates a new [GrantArgs].
  /// [database] The database to grant privileges on.
  /// [grant] Whether to also give the user privileges to grant the same privileges to other users.
  /// [host] The source host of the user. Defaults to "localhost". Conflicts with `role`.
  /// [privileges] A list of privileges to grant to the user. Refer to a list of privileges (such as [here](https://dev.mysql.com/doc/refman/5.5/en/grant.html)) for applicable privileges. Conflicts with `roles`.
  /// [role] The role to grant `privileges` to. Conflicts with `user` and `host`.
  /// [roles] A list of rols to grant to the user. Conflicts with `privileges`.
  /// [table] Which table to grant `privileges` on. Defaults to `*`, which is all tables.
  /// [tlsOption] An TLS-Option for the `GRANT` statement. The value is suffixed to `REQUIRE`. A value of 'SSL' will generate a `GRANT ... REQUIRE SSL` statement. See the [MYSQL `GRANT` documentation](https://dev.mysql.com/doc/refman/5.7/en/grant.html) for more. Ignored if MySQL version is under 5.7.0.
  /// [user] The name of the user. Conflicts with `role`.
  GrantArgs({
    required pulumi.Output<String> database,
    pulumi.Output<bool>? grant,
    pulumi.Output<String>? host,
    pulumi.Output<List<String>>? privileges,
    pulumi.Output<String>? role,
    pulumi.Output<List<String>>? roles,
    pulumi.Output<String>? table,
    pulumi.Output<String>? tlsOption,
    pulumi.Output<String>? user,
  }) :
      database = pulumi.Input.asInput<String>(database),
      grant = pulumi.Input.asOptionalInput<bool>(grant),
      host = pulumi.Input.asOptionalInput<String>(host),
      privileges = pulumi.Input.asOptionalInput<List<String>>(privileges),
      role = pulumi.Input.asOptionalInput<String>(role),
      roles = pulumi.Input.asOptionalInput<List<String>>(roles),
      table = pulumi.Input.asOptionalInput<String>(table),
      tlsOption = pulumi.Input.asOptionalInput<String>(tlsOption),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'grant': ?grant,
      'host': ?host,
      'privileges': ?privileges,
      'role': ?role,
      'roles': ?roles,
      'table': ?table,
      'tlsOption': ?tlsOption,
      'user': ?user,
    };
  }

  factory GrantArgs.fromMap(Map<String, dynamic> map) {
    return GrantArgs(
      database: pulumi.Output.create<String>(map['database'] as String),
      grant: map['grant'] == null ? null : pulumi.Output.create<bool>(map['grant'] as bool),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      privileges: map['privileges'] == null ? null : pulumi.Output.create<List<String>>((map['privileges'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<String>>((map['roles'] as List).cast<String>()),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
      tlsOption: map['tlsOption'] == null ? null : pulumi.Output.create<String>(map['tlsOption'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

