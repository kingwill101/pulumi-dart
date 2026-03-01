// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_default_privileg_default_privileg_args_doc}
/// The set of arguments for DefaultPrivileg.
/// {@endtemplate}
/// {@macro pulumi_index_default_privileg_default_privileg_args_doc}
class DefaultPrivilegArgs {
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

  /// Creates a new [DefaultPrivilegArgs].
  /// [database] The database to grant default privileges for this role.
  /// [objectType] The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  /// [owner] Specifies the role that creates objects for which the default privileges will be applied.
  /// [privileges] List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  /// [role] The role that will automatically be granted the specified privileges on new objects created by the owner.
  /// [schema] The database schema to set default privileges for this role.
  /// [withGrantOption] Permit the grant recipient to grant it to others
  DefaultPrivilegArgs({
    required pulumi.Output<String> database,
    required pulumi.Output<String> objectType,
    required pulumi.Output<String> owner,
    required pulumi.Output<List<String>> privileges,
    required pulumi.Output<String> role,
    pulumi.Output<String>? schema,
    pulumi.Output<bool>? withGrantOption,
  }) :
      database = pulumi.Input.asInput<String>(database),
      objectType = pulumi.Input.asInput<String>(objectType),
      owner = pulumi.Input.asInput<String>(owner),
      privileges = pulumi.Input.asInput<List<String>>(privileges),
      role = pulumi.Input.asInput<String>(role),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      withGrantOption = pulumi.Input.asOptionalInput<bool>(withGrantOption);

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

  factory DefaultPrivilegArgs.fromMap(Map<String, dynamic> map) {
    return DefaultPrivilegArgs(
      database: pulumi.Output.create<String>(map['database'] as String),
      objectType: pulumi.Output.create<String>(map['objectType'] as String),
      owner: pulumi.Output.create<String>(map['owner'] as String),
      privileges: pulumi.Output.create<List<String>>((map['privileges'] as List).cast<String>()),
      role: pulumi.Output.create<String>(map['role'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      withGrantOption: map['withGrantOption'] == null ? null : pulumi.Output.create<bool>(map['withGrantOption'] as bool),
    );
  }
}

