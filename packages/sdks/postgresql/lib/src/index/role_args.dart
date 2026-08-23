// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_role_role_args_doc}
/// The set of arguments for Role.
/// {@endtemplate}
/// {@macro pulumi_index_role_role_args_doc}
class RoleArgs {
  /// Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  final pulumi.Input<String>? assumeRole;
  /// Defines whether a role bypasses every
  /// row-level security (RLS) policy.  Default value is `false`.
  final pulumi.Input<bool>? bypassRowLevelSecurity;
  /// If this role can log in, this specifies how
  /// many concurrent connections the role can establish. `-1` (the default) means no
  /// limit.
  final pulumi.Input<int>? connectionLimit;
  /// Defines a role's ability to execute `CREATE
  /// DATABASE`.  Default value is `false`.
  final pulumi.Input<bool>? createDatabase;
  /// Defines a role's ability to execute `CREATE ROLE`.
  /// A role with this privilege can also alter and drop other roles.  Default value
  /// is `false`.
  final pulumi.Input<bool>? createRole;
  final pulumi.Input<String>? encrypted;
  /// Defines whether the password is stored
  /// encrypted in the system catalogs.  Default value is `true`.  NOTE: this value
  /// is always set (to the conservative and safe value), but may interfere with the
  /// behavior of
  /// [PostgreSQL's `passwordEncryption` setting](https://www.postgresql.org/docs/current/static/runtime-config-connection.html#GUC-PASSWORD-ENCRYPTION).
  final pulumi.Input<bool>? encryptedPassword;
  /// Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  final pulumi.Input<int>? idleInTransactionSessionTimeout;
  /// Defines whether a role "inherits" the privileges of
  /// roles it is a member of.  Default value is `true`.
  final pulumi.Input<bool>? inherit;
  /// Defines whether role is allowed to log in.  Roles without
  /// this attribute are useful for managing database privileges, but are not users
  /// in the usual sense of the word.  Default value is `false`.
  final pulumi.Input<bool>? login;
  /// The name of the role. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  final pulumi.Input<String>? name;
  /// Sets the role's password. A password is only of use
  /// for roles having the `login` attribute set to true.
  final pulumi.Input<String>? password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sets the role's password without storing it in the state file.
  /// This is useful for managing passwords securely. Must be used together with `passwordWoVersion`.
  /// Conflicts with `password`.
  final pulumi.Input<String>? passwordWo;
  /// Prevents applies from updating the role password on every
  /// apply unless the value changes. This version string should be updated whenever you want to
  /// change the password specified in `passwordWo`. Must be used together with `passwordWo`.
  /// Conflicts with `password`.
  final pulumi.Input<String>? passwordWoVersion;
  /// Defines whether a role is allowed to initiate
  /// streaming replication or put the system in and out of backup mode.  Default
  /// value is `false`
  final pulumi.Input<bool>? replication;
  /// Defines list of roles which will be granted to this new role.
  final pulumi.Input<List<String>>? roles;
  /// Alters the search path of this new role. Note that
  /// due to limitations in the implementation, values cannot contain the substring
  /// `", "`.
  final pulumi.Input<List<String>>? searchPaths;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, the
  /// [cleanup of ownership of objects](https://www.postgresql.org/docs/current/static/role-removal.html)
  /// in each of the respective databases must occur before the ROLE can be dropped
  /// from the catalog.  Set this option to true when there are multiple databases
  /// in a PostgreSQL cluster using the same PostgreSQL ROLE for object ownership.
  /// This is the third and final step taken when removing a ROLE from a database.
  final pulumi.Input<bool>? skipDropRole;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, a
  /// [`REASSIGN OWNED`](https://www.postgresql.org/docs/current/static/sql-reassign-owned.html) in
  /// must be executed on each of the respective databases before the `DROP ROLE`
  /// can be executed to drop the ROLE from the catalog.  This is the first and
  /// second steps taken when removing a ROLE from a database (the second step being
  /// an implicit
  /// [`DROP OWNED`](https://www.postgresql.org/docs/current/static/sql-drop-owned.html)).
  final pulumi.Input<bool>? skipReassignOwned;
  /// Defines [`statementTimeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  final pulumi.Input<int>? statementTimeout;
  /// Defines whether the role is a "superuser", and
  /// therefore can override all access restrictions within the database.  Default
  /// value is `false`.
  final pulumi.Input<bool>? superuser;
  /// Defines the date and time after which the role's
  /// password is no longer valid.  Established connections past this `validTime`
  /// will have to be manually terminated.  This value corresponds to a PostgreSQL
  /// datetime. If omitted or the magic value `NULL` is used, `validUntil` will be
  /// set to `infinity`.  Default is `NULL`, therefore `infinity`.
  final pulumi.Input<String>? validUntil;

  /// Creates a new [RoleArgs].
  /// [assumeRole] Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  /// [bypassRowLevelSecurity] Defines whether a role bypasses every
  /// [connectionLimit] If this role can log in, this specifies how
  /// [createDatabase] Defines a role's ability to execute `CREATE
  /// [createRole] Defines a role's ability to execute `CREATE ROLE`.
  /// [encrypted] Optional.
  /// [encryptedPassword] Defines whether the password is stored
  /// [idleInTransactionSessionTimeout] Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  /// [inherit] Defines whether a role "inherits" the privileges of
  /// [login] Defines whether role is allowed to log in.  Roles without
  /// [name] The name of the role. Must be unique on the PostgreSQL
  /// [password] Sets the role's password. A password is only of use
  /// [passwordWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [passwordWoVersion] Prevents applies from updating the role password on every
  /// [replication] Defines whether a role is allowed to initiate
  /// [roles] Defines list of roles which will be granted to this new role.
  /// [searchPaths] Alters the search path of this new role. Note that
  /// [skipDropRole] When a PostgreSQL ROLE exists in multiple
  /// [skipReassignOwned] When a PostgreSQL ROLE exists in multiple
  /// [statementTimeout] Defines [`statementTimeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  /// [superuser] Defines whether the role is a "superuser", and
  /// [validUntil] Defines the date and time after which the role's
  const RoleArgs({
    this.assumeRole,
    this.bypassRowLevelSecurity,
    this.connectionLimit,
    this.createDatabase,
    this.createRole,
    this.encrypted,
    this.encryptedPassword,
    this.idleInTransactionSessionTimeout,
    this.inherit,
    this.login,
    this.name,
    this.password,
    this.passwordWo,
    this.passwordWoVersion,
    this.replication,
    this.roles,
    this.searchPaths,
    this.skipDropRole,
    this.skipReassignOwned,
    this.statementTimeout,
    this.superuser,
    this.validUntil,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assumeRole': ?assumeRole,
      'bypassRowLevelSecurity': ?bypassRowLevelSecurity,
      'connectionLimit': ?connectionLimit,
      'createDatabase': ?createDatabase,
      'createRole': ?createRole,
      'encrypted': ?encrypted,
      'encryptedPassword': ?encryptedPassword,
      'idleInTransactionSessionTimeout': ?idleInTransactionSessionTimeout,
      'inherit': ?inherit,
      'login': ?login,
      'name': ?name,
      'password': ?password,
      'passwordWo': ?passwordWo,
      'passwordWoVersion': ?passwordWoVersion,
      'replication': ?replication,
      'roles': ?roles,
      'searchPaths': ?searchPaths,
      'skipDropRole': ?skipDropRole,
      'skipReassignOwned': ?skipReassignOwned,
      'statementTimeout': ?statementTimeout,
      'superuser': ?superuser,
      'validUntil': ?validUntil,
    };
  }

  factory RoleArgs.fromMap(Map<String, dynamic> map) {
    return RoleArgs(
      assumeRole: (() { final guardedValue = map['assumeRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bypassRowLevelSecurity: (() { final guardedValue = map['bypassRowLevelSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionLimit: (() { final guardedValue = map['connectionLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createDatabase: (() { final guardedValue = map['createDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createRole: (() { final guardedValue = map['createRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedPassword: (() { final guardedValue = map['encryptedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleInTransactionSessionTimeout: (() { final guardedValue = map['idleInTransactionSessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inherit: (() { final guardedValue = map['inherit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWo: (() { final guardedValue = map['passwordWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordWoVersion: (() { final guardedValue = map['passwordWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replication: (() { final guardedValue = map['replication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      searchPaths: (() { final guardedValue = map['searchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      skipDropRole: (() { final guardedValue = map['skipDropRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skipReassignOwned: (() { final guardedValue = map['skipReassignOwned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      statementTimeout: (() { final guardedValue = map['statementTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      superuser: (() { final guardedValue = map['superuser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validUntil: (() { final guardedValue = map['validUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
