// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_default_privileges_default_privileges_args_doc}
/// The set of arguments for DefaultPrivileges.
/// {@endtemplate}
/// {@macro pulumi_index_default_privileges_default_privileges_args_doc}
class DefaultPrivilegesArgs {
  /// The database to grant default privileges for this role.
  final pulumi.Input<String> database;
  /// The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  final pulumi.Input<String> objectType;
  /// Specifies the role that creates objects for which the default privileges will be applied.
  final pulumi.Input<String> owner;
  /// List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  final pulumi.Input<List<String>> privileges;
  /// The role that will automatically be granted the specified privileges on new objects created by the owner.
  final pulumi.Input<String> role;
  /// The database schema to set default privileges for this role.
  final pulumi.Input<String>? schema;
  /// Permit the grant recipient to grant it to others
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [DefaultPrivilegesArgs].
  /// [database] The database to grant default privileges for this role.
  /// [objectType] The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  /// [owner] Specifies the role that creates objects for which the default privileges will be applied.
  /// [privileges] List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  /// [role] The role that will automatically be granted the specified privileges on new objects created by the owner.
  /// [schema] The database schema to set default privileges for this role.
  /// [withGrantOption] Permit the grant recipient to grant it to others
  DefaultPrivilegesArgs({
    required this.database,
    required this.objectType,
    required this.owner,
    required this.privileges,
    required this.role,
    this.schema,
    this.withGrantOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'objectType': objectType,
      'owner': owner,
      'privileges': privileges,
      'role': role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory DefaultPrivilegesArgs.fromMap(Map<String, dynamic> map) {
    return DefaultPrivilegesArgs(
      database: pulumi.Input.fromValue(map['database'] as String),
      objectType: pulumi.Input.fromValue(map['objectType'] as String),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      privileges: pulumi.Input.fromValue((map['privileges'] as List).cast<String>()),
      role: pulumi.Input.fromValue(map['role'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withGrantOption: (() { final guardedValue = map['withGrantOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

