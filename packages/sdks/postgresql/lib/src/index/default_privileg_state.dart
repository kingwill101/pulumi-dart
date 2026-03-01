// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefaultPrivileg resources.
class DefaultPrivilegState {
  /// The database to grant default privileges for this role.
  final pulumi.Input<String>? database;
  /// The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  final pulumi.Input<String>? objectType;
  /// Specifies the role that creates objects for which the default privileges will be applied.
  final pulumi.Input<String>? owner;
  /// List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  final pulumi.Input<List<String>>? privileges;
  /// The role that will automatically be granted the specified privileges on new objects created by the owner.
  final pulumi.Input<String>? role;
  /// The database schema to set default privileges for this role.
  final pulumi.Input<String>? schema;
  /// Permit the grant recipient to grant it to others
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [DefaultPrivilegState].
  /// [database] The database to grant default privileges for this role.
  /// [objectType] The PostgreSQL object type to set the default privileges on (one of: table, sequence, function, routine, type, schema).
  /// [owner] Specifies the role that creates objects for which the default privileges will be applied.
  /// [privileges] List of privileges (e.g., SELECT, INSERT, UPDATE, DELETE) to grant on new objects created by the owner. An empty list could be provided to revoke all default privileges for this role.
  /// [role] The role that will automatically be granted the specified privileges on new objects created by the owner.
  /// [schema] The database schema to set default privileges for this role.
  /// [withGrantOption] Permit the grant recipient to grant it to others
  DefaultPrivilegState({
    pulumi.Output<String>? database,
    pulumi.Output<String>? objectType,
    pulumi.Output<String>? owner,
    pulumi.Output<List<String>>? privileges,
    pulumi.Output<String>? role,
    pulumi.Output<String>? schema,
    pulumi.Output<bool>? withGrantOption,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      objectType = pulumi.Input.asOptionalInput<String>(objectType),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      privileges = pulumi.Input.asOptionalInput<List<String>>(privileges),
      role = pulumi.Input.asOptionalInput<String>(role),
      schema = pulumi.Input.asOptionalInput<String>(schema),
      withGrantOption = pulumi.Input.asOptionalInput<bool>(withGrantOption);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'objectType': ?objectType,
      'owner': ?owner,
      'privileges': ?privileges,
      'role': ?role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory DefaultPrivilegState.fromMap(Map<String, dynamic> map) {
    return DefaultPrivilegState(
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      objectType: map['objectType'] == null ? null : pulumi.Output.create<String>(map['objectType'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      privileges: map['privileges'] == null ? null : pulumi.Output.create<List<String>>((map['privileges'] as List).cast<String>()),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
      withGrantOption: map['withGrantOption'] == null ? null : pulumi.Output.create<bool>(map['withGrantOption'] as bool),
    );
  }
}

