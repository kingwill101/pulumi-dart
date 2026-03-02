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
    required this.database,
    this.grant,
    this.host,
    this.privileges,
    this.role,
    this.roles,
    this.table,
    this.tlsOption,
    this.user,
  });

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
      database: (map['database'] as String).input(),
      grant: map['grant'] == null ? null : (map['grant'] as bool).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      privileges: map['privileges'] == null ? null : ((map['privileges'] as List).cast<String>()).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      roles: map['roles'] == null ? null : ((map['roles'] as List).cast<String>()).input(),
      table: map['table'] == null ? null : (map['table'] as String).input(),
      tlsOption: map['tlsOption'] == null ? null : (map['tlsOption'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

