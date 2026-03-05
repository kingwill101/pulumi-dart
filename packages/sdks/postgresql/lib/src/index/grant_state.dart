// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Grant resources.
class GrantState {
  /// The columns upon which to grant the privileges. Required when `object_type` is `column`. You cannot specify this option if the `object_type` is not `column`.
  final pulumi.Input<List<String>>? columns;
  /// The database to grant privileges on for this role.
  final pulumi.Input<String>? database;
  /// The PostgreSQL object type to grant the privileges on (one of: database, schema, table, sequence, function, procedure, routine, foreign_data_wrapper, foreign_server, column).
  final pulumi.Input<String>? objectType;
  /// The objects upon which to grant the privileges. An empty list (the default) means to grant permissions on *all* objects of the specified type. You cannot specify this option if the `object_type` is `database` or `schema`. When `object_type` is `column`, only one value is allowed.
  final pulumi.Input<List<String>>? objects;
  /// The list of privileges to grant. There are different kinds of privileges: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE. An empty list could be provided to revoke all privileges for this role.
  final pulumi.Input<List<String>>? privileges;
  /// The name of the role to grant privileges on, Set it to "public" for all roles.
  final pulumi.Input<String>? role;
  /// The database schema to grant privileges on for this role (Required except if object_type is "database")
  final pulumi.Input<String>? schema;
  /// Whether the recipient of these privileges can grant the same privileges to others. Defaults to false.
  final pulumi.Input<bool>? withGrantOption;

  /// Creates a new [GrantState].
  /// [columns] The columns upon which to grant the privileges. Required when `object_type` is `column`. You cannot specify this option if the `object_type` is not `column`.
  /// [database] The database to grant privileges on for this role.
  /// [objectType] The PostgreSQL object type to grant the privileges on (one of: database, schema, table, sequence, function, procedure, routine, foreign_data_wrapper, foreign_server, column).
  /// [objects] The objects upon which to grant the privileges. An empty list (the default) means to grant permissions on *all* objects of the specified type. You cannot specify this option if the `object_type` is `database` or `schema`. When `object_type` is `column`, only one value is allowed.
  /// [privileges] The list of privileges to grant. There are different kinds of privileges: SELECT, INSERT, UPDATE, DELETE, TRUNCATE, REFERENCES, TRIGGER, CREATE, CONNECT, TEMPORARY, EXECUTE, and USAGE. An empty list could be provided to revoke all privileges for this role.
  /// [role] The name of the role to grant privileges on, Set it to "public" for all roles.
  /// [schema] The database schema to grant privileges on for this role (Required except if object_type is "database")
  /// [withGrantOption] Whether the recipient of these privileges can grant the same privileges to others. Defaults to false.
  GrantState({
    this.columns,
    this.database,
    this.objectType,
    this.objects,
    this.privileges,
    this.role,
    this.schema,
    this.withGrantOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?columns,
      'database': ?database,
      'objectType': ?objectType,
      'objects': ?objects,
      'privileges': ?privileges,
      'role': ?role,
      'schema': ?schema,
      'withGrantOption': ?withGrantOption,
    };
  }

  factory GrantState.fromMap(Map<String, dynamic> map) {
    return GrantState(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objects: (() { final guardedValue = map['objects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withGrantOption: (() { final guardedValue = map['withGrantOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

