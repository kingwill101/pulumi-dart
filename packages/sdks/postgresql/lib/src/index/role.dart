import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';
import 'role_state.dart';

class Role extends pulumi.CustomResource {
  /// Defines the role to switch to at login via [`SET ROLE`](https://www.postgresql.org/docs/current/sql-set-role.html).
  late final pulumi.Output<String?> assumeRole;
  /// Defines whether a role bypasses every
  /// row-level security (RLS) policy.  Default value is `false`.
  late final pulumi.Output<bool?> bypassRowLevelSecurity;
  /// If this role can log in, this specifies how
  /// many concurrent connections the role can establish. `-1` (the default) means no
  /// limit.
  late final pulumi.Output<int?> connectionLimit;
  /// Defines a role's ability to execute `CREATE
  /// DATABASE`.  Default value is `false`.
  late final pulumi.Output<bool?> createDatabase;
  /// Defines a role's ability to execute `CREATE ROLE`.
  /// A role with this privilege can also alter and drop other roles.  Default value
  /// is `false`.
  late final pulumi.Output<bool?> createRole;
  late final pulumi.Output<String?> encrypted;
  /// Defines whether the password is stored
  /// encrypted in the system catalogs.  Default value is `true`.  NOTE: this value
  /// is always set (to the conservative and safe value), but may interfere with the
  /// behavior of
  /// [PostgreSQL's `password_encryption` setting](https://www.postgresql.org/docs/current/static/runtime-config-connection.html#GUC-PASSWORD-ENCRYPTION).
  late final pulumi.Output<bool?> encryptedPassword;
  /// Terminate any session with an open transaction that has been idle for longer than the specified duration in milliseconds
  late final pulumi.Output<int?> idleInTransactionSessionTimeout;
  /// Defines whether a role "inherits" the privileges of
  /// roles it is a member of.  Default value is `true`.
  late final pulumi.Output<bool?> inherit;
  /// Defines whether role is allowed to log in.  Roles without
  /// this attribute are useful for managing database privileges, but are not users
  /// in the usual sense of the word.  Default value is `false`.
  late final pulumi.Output<bool?> login;
  /// The name of the role. Must be unique on the PostgreSQL
  /// server instance where it is configured.
  late final pulumi.Output<String> name;
  /// Sets the role's password. A password is only of use
  /// for roles having the `login` attribute set to true.
  late final pulumi.Output<String?> password;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Sets the role's password without storing it in the state file.
  /// This is useful for managing passwords securely. Must be used together with `password_wo_version`.
  /// Conflicts with `password`.
  late final pulumi.Output<String?> passwordWo;
  /// Prevents applies from updating the role password on every
  /// apply unless the value changes. This version string should be updated whenever you want to
  /// change the password specified in `password_wo`. Must be used together with `password_wo`.
  /// Conflicts with `password`.
  late final pulumi.Output<String?> passwordWoVersion;
  /// Defines whether a role is allowed to initiate
  /// streaming replication or put the system in and out of backup mode.  Default
  /// value is `false`
  late final pulumi.Output<bool?> replication;
  /// Defines list of roles which will be granted to this new role.
  late final pulumi.Output<List<String>?> roles;
  /// Alters the search path of this new role. Note that
  /// due to limitations in the implementation, values cannot contain the substring
  /// `", "`.
  late final pulumi.Output<List<String>?> searchPaths;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, the
  /// [cleanup of ownership of objects](https://www.postgresql.org/docs/current/static/role-removal.html)
  /// in each of the respective databases must occur before the ROLE can be dropped
  /// from the catalog.  Set this option to true when there are multiple databases
  /// in a PostgreSQL cluster using the same PostgreSQL ROLE for object ownership.
  /// This is the third and final step taken when removing a ROLE from a database.
  late final pulumi.Output<bool?> skipDropRole;
  /// When a PostgreSQL ROLE exists in multiple
  /// databases and the ROLE is dropped, a
  /// [`REASSIGN OWNED`](https://www.postgresql.org/docs/current/static/sql-reassign-owned.html) in
  /// must be executed on each of the respective databases before the `DROP ROLE`
  /// can be executed to drop the ROLE from the catalog.  This is the first and
  /// second steps taken when removing a ROLE from a database (the second step being
  /// an implicit
  /// [`DROP OWNED`](https://www.postgresql.org/docs/current/static/sql-drop-owned.html)).
  late final pulumi.Output<bool?> skipReassignOwned;
  /// Defines [`statement_timeout`](https://www.postgresql.org/docs/current/runtime-config-client.html#RUNTIME-CONFIG-CLIENT-STATEMENT) setting for this role which allows to abort any statement that takes more than the specified amount of time.
  late final pulumi.Output<int?> statementTimeout;
  /// Defines whether the role is a "superuser", and
  /// therefore can override all access restrictions within the database.  Default
  /// value is `false`.
  late final pulumi.Output<bool?> superuser;
  /// Defines the date and time after which the role's
  /// password is no longer valid.  Established connections past this `valid_time`
  /// will have to be manually terminated.  This value corresponds to a PostgreSQL
  /// datetime. If omitted or the magic value `NULL` is used, `valid_until` will be
  /// set to `infinity`.  Default is `NULL`, therefore `infinity`.
  late final pulumi.Output<String?> validUntil;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_index_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assumeRole = registerOutput<String?>('assumeRole');
    bypassRowLevelSecurity = registerOutput<bool?>('bypassRowLevelSecurity');
    connectionLimit = registerOutput<int?>('connectionLimit');
    createDatabase = registerOutput<bool?>('createDatabase');
    createRole = registerOutput<bool?>('createRole');
    encrypted = registerOutput<String?>('encrypted');
    encryptedPassword = registerOutput<bool?>('encryptedPassword');
    idleInTransactionSessionTimeout = registerOutput<int?>('idleInTransactionSessionTimeout');
    inherit = registerOutput<bool?>('inherit');
    login = registerOutput<bool?>('login');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    replication = registerOutput<bool?>('replication');
    roles = registerOutput<List<String>?>('roles');
    searchPaths = registerOutput<List<String>?>('searchPaths');
    skipDropRole = registerOutput<bool?>('skipDropRole');
    skipReassignOwned = registerOutput<bool?>('skipReassignOwned');
    statementTimeout = registerOutput<int?>('statementTimeout');
    superuser = registerOutput<bool?>('superuser');
    validUntil = registerOutput<String?>('validUntil');
  }

  /// Gets an existing [Role] resource's state with the given [name] and [id].
  static Role get(
    String name,
    pulumi.Input<String> id, {
    RoleState? state,
  }) {
    return Role._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Role._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/role:Role',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assumeRole = registerOutput<String?>('assumeRole');
    bypassRowLevelSecurity = registerOutput<bool?>('bypassRowLevelSecurity');
    connectionLimit = registerOutput<int?>('connectionLimit');
    createDatabase = registerOutput<bool?>('createDatabase');
    createRole = registerOutput<bool?>('createRole');
    encrypted = registerOutput<String?>('encrypted');
    encryptedPassword = registerOutput<bool?>('encryptedPassword');
    idleInTransactionSessionTimeout = registerOutput<int?>('idleInTransactionSessionTimeout');
    inherit = registerOutput<bool?>('inherit');
    login = registerOutput<bool?>('login');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    passwordWo = registerOutput<String?>('passwordWo');
    passwordWoVersion = registerOutput<String?>('passwordWoVersion');
    replication = registerOutput<bool?>('replication');
    roles = registerOutput<List<String>?>('roles');
    searchPaths = registerOutput<List<String>?>('searchPaths');
    skipDropRole = registerOutput<bool?>('skipDropRole');
    skipReassignOwned = registerOutput<bool?>('skipReassignOwned');
    statementTimeout = registerOutput<int?>('statementTimeout');
    superuser = registerOutput<bool?>('superuser');
    validUntil = registerOutput<String?>('validUntil');
  }
}
